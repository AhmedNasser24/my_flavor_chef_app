import 'package:chef_app/core/enums/social_media_kind.dart';
import 'package:flutter/material.dart';

import '../../../../core/url_launcher/social_media_launcher.dart';
import '../../../../core/utils/themes/app_colors.dart';
import '../../../../core/utils/themes/app_images.dart';

class SocialMediaButtonIcons extends StatelessWidget {
  const SocialMediaButtonIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.primary, width: 1),
      ),
      child: Center(
        child: Wrap(
          spacing: 16,
          children: [
            InkWell(
              onTap: () {
                SocialMediaLauncher.launch(SocialMediaKind.instagram);
              },
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(AppImages.imagesInstagram),
            ),
            InkWell(
              onTap: () {
                SocialMediaLauncher.launch(SocialMediaKind.facebook);
              },
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(AppImages.imagesFacebook),
            ),
            InkWell(
              onTap: () {
                SocialMediaLauncher.launch(SocialMediaKind.whatsapp);
              },
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(AppImages.imagesWhatsapp2Icon),
            ),
            InkWell(
              onTap: () {
                SocialMediaLauncher.launch(SocialMediaKind.snapchat);
              },
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(AppImages.imagesSnapchat),
            ),
            InkWell(
              onTap: () {
                SocialMediaLauncher.launch(SocialMediaKind.tiktok);
              },
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(AppImages.imagesTiktok),
            ),
          ],
        ),
      ),
    );
  }
}
