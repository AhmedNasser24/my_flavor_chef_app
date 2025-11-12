import 'dart:developer';

import 'package:chef_app/core/enums/social_media_kind.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaLauncher {
  static Future<void> launch(SocialMediaKind socialMediaKind) async {
    final Uri uri;

    switch (socialMediaKind) {
      case SocialMediaKind.instagram:
        uri = Uri.parse('https://www.instagram.com/');
        break;
      case SocialMediaKind.facebook:
        uri = Uri.parse('https://www.facebook.com/');
        break;
      case SocialMediaKind.whatsapp:
        uri = Uri.parse('https://wa.me/');
        break;
      case SocialMediaKind.snapchat:
        uri = Uri.parse('https://www.snapchat.com/add/');
        break;
      case SocialMediaKind.tiktok:
        uri = Uri.parse('https://www.tiktok.com/');
        break;
    }

    _canLaunchMyUrl(uri);
  }

  static void _canLaunchMyUrl(Uri url) {
    // if (await canLaunchUrl(url)) {
    try {
      launchUrl(url , mode: LaunchMode.externalApplication);
    } catch (e) {
      log(e.toString());
    }
  }
}
