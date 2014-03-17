---
layout: post
title: Use Advanced Installer licensing within a Java application
categories:
- advancedinstaller
- java
tags:
- advancedinstaller
- java
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
<a href="http://www.advancedinstaller.com/"><img alt="" src="http://www.caphyon.com/img/index/biglogo_ai.gif" title="Advanced Installer" class="alignleft" width="69" height="99" /></a>Advanced Installer 6.7 has a <a href="http://www.advancedinstaller.com/user-guide/licensing.html">new licensing and registration feature</a> which allows for time-limited demos/trials and registration of installed software.

Caphyon, the maker of Advanced Installer, provides code samples and <a href="http://www.advancedinstaller.com/user-guide/qat-trial.html">documentation on licensing integration</a> for C++ and C# applications.  To use this feature, the application must make a call into an Advanced Installer library and handle its return code.  

The library is a gatekeeper to the rest of the application, effectively deciding whether or not the application is allowed to run.  It determines the software's trial status and displays a registration dialog, terminates the application, or returns a code, accordingly.  The Java implementation of this feature works a little differently.

For those using the <a href="http://www.advancedinstaller.com/user-guide/native-java-launcher.html">Java Launcher</a>, integrating the licensing feature is easy: simply add the Java Product on the <a href="http://www.advancedinstaller.com/user-guide/licensing-settings.html">Licensing Options</a> tab.  But, what about those who don't use Java Launcher?  Or those that wish to enable users to register from within the application?

There is no official documentation which answers these questions, but based on a discussion following a <a href="http://www.advancedinstaller.com/forums/viewtopic.php?f=2&t=8538">request for help I posted on the Advanced Installer forums</a>, I was able integrate AI's licensing feature into my Java application without using the Java Launcher.<!--more-->

My solution mirrors the C++ implementation and is remarkably simple.  Thanks to Cosmin, a member of the Advanced Installer support team, for sending me in the right direction.

<pre lang="java" line="1">
public class LicenseChecker {
    private static final String LIBRARY_KEY = "Replace this String with the Trialware/Registration Library Key";

    public static void main(String args[]) {
        int i = TrialLibrary.INSTANCE.ReadSettingsStr(LIBRARY_KEY, null);
        switch (i) { //http://www.advancedinstaller.com/user-guide/qa-trial-using.html
        case 0:
            System.out.println("Thank you for registering this program.");
            break;
        case 2:
            System.out.println("Thank you for trying this program.");
            break;
        default:
            System.exit(i);
        }
        System.out.println("Program will continue.");
        // ...
    }

    interface TrialLibrary extends Library {
        final TrialLibrary INSTANCE = (TrialLibrary) Native.loadLibrary("Trial", TrialLibrary.class); // loads Trial.dll
        int ReadSettingsStr(String keyCode, HWND hwnd);
        int DisplayRegistrationStr(String keyCode, HWND hwnd);
    }
}
</pre>

Note: The above uses <a href="https://jna.dev.java.net/">Java Native Access (JNA)</a> to invoke the Advanced Installer library.
