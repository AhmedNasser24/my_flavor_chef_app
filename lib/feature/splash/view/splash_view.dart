import 'package:chef_app/core/utils/themes/app_images.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(AppImages.imagesSplashLogo),
            Gap(20),
            Spacer(),
            Image.asset(AppImages.imagesAppLogo),
          ],
        ),
      ),
    );
  }
}
