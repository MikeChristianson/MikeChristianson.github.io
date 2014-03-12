--- 
layout: post
title: 'Dropwizard: painless RESTful JSON HTTP web services'
--- 
[![](http://dropwizard.codahale.com/_static/xdropwizard-hat.png.pagespeed.ic.t8SjDATVsD.png){: width="150" height="246" style="float: left; margin-right: 2em;"}][1]

Java developers looking for a quick, painless way of creating production-ready RESTful JSON HTTP web services should consider the [Dropwizard][1] framework. Dropwizard brings together well-regarded libraries that compliment each other so you can get to what's important: writing and delivering working code. For those interested in details on the libraries used, please refer to the [Dropwizard overview][2]. Fortunately, Dropwizard doesn't make you deal with all of its individual components. You'll be able to keep your focus on your work at hand. If you've got some time, stick around and let's make something with Dropwizard.

All code for this tutorial is available at [GitHub][3].

## How do you get started with Dropwizard?

A single Maven, Gradle, or Ivy dependency will get you all the components necessary for making Dropwizard-powered web services.     

{% highlight xml %}
<dependency>
    <groupId>com.yammer.dropwizard</groupId>
    <artifactId>dropwizard-core</artifactId>
    <version>0.6.2</version>
</dependency>
{% endhighlight %}

*Note*: Please refer to [Dropwizard's excellent documentation][4] if you encounter anything you think isn't explained sufficiently in this short posting.

## What shall we make?

Let's make a web service that returns the current date and time for a given timezone. We'll use a configurable default timezone if a client decides not to specify one.

## Configuration

Our super-simple `time-service.yml` configuration file will look like this.
{% highlight yaml %}
defaultTimezone: UTC
{% endhighlight %}

Behind the scenes, Dropwizard will load, parse, validate, and turn that configuration into an object. All we need to do is specify it as a class.     

{% highlight java %}
public class TimezoneConfiguration extends Configuration {
    @NotEmpty
    @JsonProperty
    private String defaultTimezone;

    public String getDefaultTimezone() { return defaultTimezone; }
}
{% endhighlight %}

## Service Output

Let's say we want the output of our web service to look like this.     

{% highlight json %}
{ "time": "2014-02-04 13:45:02" }
{% endhighlight %}

The corresponding class is straightforward.     

{% highlight java %}
public class Time {
    private final String time;

    public Time(String time) {
        this.time = time;
    }

    public String getTime() { return time; }
}
{% endhighlight %}

## Resource

Next, we decide we want the URL path for our web service to be `/time`. And we need to specify the resource will return JSON. Putting those together gives us this.     

{% highlight java %}
@Path("/time")
@Produces(MediaType.APPLICATION_JSON)
public class TimeResource {
}
{% endhighlight %}

The only RESTful action that makes sense right now for our demo web service is `GET`, so let's make a method for that. When consuming our web service, the client can provide a timezone as a query string parameter.     

{% highlight java %}
@GET
public Time getTime(@QueryParam("timezone") String timezone) {
}
{% endhighlight %}

That leaves us with three more things to do: 

1. handle a given timezone from the client
1. substitute a default timezone if none is given
1. format the current date and time with the timezone

{% highlight java %}
@Path("/time")
@Produces(MediaType.APPLICATION_JSON)
public class TimeResource {
    private final String defaultTimezone;

    public TimeResource(String defaultTimezone) {
        this.defaultTimezone = defaultTimezone;
    }

    @GET
    public Time getTime(@QueryParam("timezone") Optional timezone) {
        DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        TimeZone timeZone = TimeZone.getTimeZone(timezone.or(defaultTimezone));
        formatter.setTimeZone(timeZone);
        String formatted = formatter.format(new Date());
        return new Time(formatted);
    }
}
{% endhighlight %}

## Service

Now, let's bring together all the pieces of our web service in our entry-point class we'll call `TimeService`. Here we'll use our `TimezoneConfiguration` to pass the default timezone to `TimeResource`.

{% highlight java %}
public class TimeService extends Service {
    public static void main(String[] args) throws Exception {
        new TimeService().run(args);
    }

    @Override
    public void run(TimezoneConfiguration config, Environment environment) {
        String defaultTimezone = config.getDefaultTimezone();
        TimeResource timeResource = new TimeResource(defaultTimezone);
        environment.addResource(timeResource);
    }

    @Override
    public void initialize(Bootstrap timezoneConfigurationBootstrap) {
    }
}
{% endhighlight %}

## Pencils Down

That's it! We've just written a Dropwizard-based web service without mind-numbing boilerplate or mounds of obtuse XML configuration.

## Running

Running your web service is as simple as executing a command-line Java application -- no need to worry about .war files or servlet containers.

`java -cp libraries/* name.christianson.mike.TimeService server time-service.yml`

Now, point your web browser or curl at `http://localhost:8080/time?timezone=MST` and have fun!

All code for this tutorial is available at [GitHub][3].

[1]: http://dropwizard.codahale.com/
[2]: http://dropwizard.codahale.com/getting-started/#overview
[3]: https://codeaweso.me/_/dwtutcode
[4]: http://dropwizard.codahale.com/getting-started/
