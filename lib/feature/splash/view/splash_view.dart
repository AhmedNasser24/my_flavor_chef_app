import 'package:chef_app/core/utils/themes/app_font_style.dart';
import 'package:chef_app/core/utils/themes/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void didChangeDependencies() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Gap(50),
              Image.asset(AppImages.imagesSplashLogo),
              Gap(20),
              Text("بيت النكهة ", style: AppFontStyle.bold40Secondary),
              Gap(10),
              Text(
                "دخولك إلى عالم الفخامة",
                style: AppFontStyle.regular16Secondary,
              ),
              Spacer(),
              Image.asset(AppImages.imagesAppLogo),
              Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
