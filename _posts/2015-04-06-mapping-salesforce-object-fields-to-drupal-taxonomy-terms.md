---
layout: post
title: Mapping Salesforce Object fields to Drupal Taxonomy terms
categories:
- drupal
---
The [Salesforce Suite module for Drupal][suite] synchronizes Salesforce _Objects_ with Drupal _Content Types_ on a one-to-one, field-to-field basis. However, it doesn't map an _Object_'s fields to a _Content Type_'s Taxonomy terms. After laying out a use case, I'll share my working solution.

# Example

Let's say you want to replicate Salesforce `Contact` Objects as instances of a Drupal _Content Type_. The following Object fields map directly to fields in our Content Type.

- Name
- LeadSource
- Email

You could create a Content Type mirroring those as simple text fields. But, I have something more interesting in mind for you!

[![Drupal Contact Content Type fields screenshot, with LeadSource as a Taxonomy][content-type]][content-type-original]

`LeadSource` is a Salesforce _picklist_ that might work well as a Drupal _Taxonomy_. Perhaps you'd like to use it in a faceted search, or as an easy filter for a view, or use some cool module for taxonomies? Sorry, the Salesforce module can't get you there out of the box.

# The Road Taken

In August of 2013, the user _mkryemadhi_ posted a Drupal.org issue titled [_Mapping drupal vocabulary terms with Salesforce field_][post] inquiring whether or not it was possible. A few others replied, also in search of a solution. About a year later, one of the module's contributors, [_tauno_, replied with a suggestion][post-reply].

> …
> For pulling, you would need to implement `hook_salesforce_pull_entity_value_alter()` to use a term name from SF and convert that to a term id in Drupal.
>
> A custom field mapping handler could be implemented to make this all possible from the UI. Moving to the Feature Request queue.

# My Solution

Here's how I used the first part of that advice and implemented `hook_salesforce_pull_entity_value_alter()` to successfully map Salesforce Object fields to Drupal Taxonomy terms.

To start, I created a custom module with a function implementing the `hook`. Then, because I had more than one implementation of that kind, I checked the incoming Object type. If it wasn't `Contact`, I skipped it. Otherwise, I used the Content Type's mapped field to obtain the _Vocabulary_ and either create a new term or use the existing one.

[![Drupal Salesforce Contact mapping screenshot][salesforce-mapping]][salesforce-mapping-original]

To use my solution, you'll need to:

- Have a Content Type with a field of type _Term reference_.
- Create and enable a [custom module][custom-module] containing [my code, below](#code).
- Set up a mapping from the Content Type's field ("Drupal Field") using [_Related entities_, as above][salesforce-mapping-original], to the Object's field ("Salesforce Field").

__But, first:__ _please note the following_:

- Expect some naive Drupal / PHP mistakes. This is an excerpt from my very first Drupal module / PHP code.
- This solution hijacks the module's concept of Related Entity; the way I went about it prevents its original, intended usage. (It's meant more for referencing a Node from another Node.)
- I should have used a custom mapping handler and created a proper UI for it.

In the near future I hope to resolve the deficiencies in my implementation and contribute my solution back to Drupal's Salesforce Suite community.

## Code

{% gist bec8ccbfe552c7f4a52b %}

[suite]: https://www.drupal.org/project/salesforce
[post]: https://www.drupal.org/node/2061623
[post-reply]: https://www.drupal.org/node/2061623#comment-9300553
[content-type]: http://www.smugmug.com/photos/i-NPS57xN/0/M/i-NPS57xN-M.png
[content-type-original]: http://www.smugmug.com/photos/i-NPS57xN/0/O/i-NPS57xN.png
[salesforce-mapping]: http://www.smugmug.com/photos/i-WTtmWMx/0/M/i-WTtmWMx-M.png
[salesforce-mapping-original]: http://www.smugmug.com/photos/i-WTtmWMx/0/O/i-WTtmWMx.png
[custom-module]: https://api.drupal.org/api/drupal/includes!module.inc/group/hooks/7
