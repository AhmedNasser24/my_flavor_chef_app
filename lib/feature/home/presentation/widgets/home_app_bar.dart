
import 'package:chef_app/core/utils/themes/app_colors.dart';
import 'package:chef_app/core/utils/themes/app_images.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(AppImages.imagesAppLogo),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: AppColors.black11,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Image.asset(AppImages.imagesNotificationIcon),
            ),
          ),
          Gap(6),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: AppColors.black11,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Image.asset(AppImages.imagesProfileIcon),
            ),
          ),
        ],
      ),
    );
  }
}
