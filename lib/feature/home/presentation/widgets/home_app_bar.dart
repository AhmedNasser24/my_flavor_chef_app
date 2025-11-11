
import 'package:chef_app/core/utils/themes/app_images.dart';
import 'package:chef_app/feature/home/presentation/widgets/notification_icon_button.dart';
import 'package:chef_app/feature/home/presentation/widgets/profile_icon_button.dart';
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
      padding: const EdgeInsets.symmetric(vertical:  16.0),
      child: Row(
        children: [
          Image.asset(AppImages.imagesAppLogo),
          const Spacer(),
          NotificationIconButton(),
          Gap(10),
          ProfileIconButton(),
        ],
      ),
    );
  }
}



