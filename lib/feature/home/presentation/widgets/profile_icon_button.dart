import 'package:chef_app/core/routing/route_name.dart';
import 'package:chef_app/core/utils/themes/app_colors.dart';
import 'package:chef_app/core/utils/themes/app_images.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileIconButton extends StatelessWidget {
  const ProfileIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(RouteName.profile);
      },
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: AppColors.black11,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Image.asset(AppImages.imagesProfileIcon),
        ),
      ),
    );
  }
}