import 'package:chef_app/core/languages/locale_keys.g.dart';
import 'package:chef_app/core/routing/route_name.dart';
import 'package:chef_app/core/utils/themes/app_font_style.dart';
import 'package:chef_app/core/utils/themes/app_images.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      context.go(RouteName.login);
    });
  }

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
              Text(
                LocaleKeys.splash_title.tr(),
                style: AppFontStyle.bold40Secondary,
              ),
              Gap(10),
              Text(
                LocaleKeys.splash_subtitle.tr(),
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
