import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactProvider extends ChangeNotifier {
  void launchPhoneNumber() {
    Uri url = Uri.parse('tel: +91 7490835410');
    launchUrl(url);
  }

  void launchSMS() {
    Uri url = Uri.parse('sms: +91 7490835410');
    launchUrl(url);
  }

  void launchMail() {
    Uri url = Uri.parse('mailto: contact@omgcreation.in');
    launchUrl(url);
  }

  void launchGithub() {
    Uri url = Uri.parse('https://github.com/ombharsakle');
    launchUrl(url, mode: LaunchMode.inAppWebView);
  }

  void launchLinkdin() {
    Uri url = Uri.parse('https://linkedin.com/in/ombharsakle');
    launchUrl(url);
  }

  void launchGoogle() {
    Uri url = Uri.parse('https://www.google.com/');
    launchUrl(url);
  }
}