import 'package:chef_app/core/languages/locale_keys.g.dart';
import 'package:chef_app/core/utils/themes/app_colors.dart';
import 'package:chef_app/core/utils/themes/app_font_style.dart';
import 'package:chef_app/core/utils/themes/app_images.dart';
import 'package:chef_app/feature/profile/presentation/widgets/logout_tile.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: AppColors.black11,
                ),
                Gap(150),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.symmetric(vertical: 8),
                  decoration:  BoxDecoration(
                    color: AppColors.black11,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      PersonalInformationTile(),
                      ConnectWithUsTile(),
                      SettingTile(),
                    ],
                  ),
                ),
                Gap(20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.symmetric(vertical: 8),
                  decoration:  BoxDecoration(
                    color: AppColors.black11,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: LogoutTile()
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



class SettingTile extends StatelessWidget {
  const SettingTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        LocaleKeys.settings.tr(),
        style: AppFontStyle.regular14WhiteFA,
      ),
      leading: Image.asset(AppImages.imagesSettingIcon),
      trailing: Image.asset(AppImages.imagesForwardIosArrow),
    );
  }
}

class ConnectWithUsTile extends StatelessWidget {
  const ConnectWithUsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        LocaleKeys.connect_with_us.tr(),
        style: AppFontStyle.regular14WhiteFA,
      ),
      leading: Image.asset(AppImages.imagesConnectWithUsIcon),
      trailing: Image.asset(AppImages.imagesForwardIosArrow),
    );
  }
}

class PersonalInformationTile extends StatelessWidget {
  const PersonalInformationTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        LocaleKeys.personal_info.tr(),
        style: AppFontStyle.regular14WhiteFA,
      ),
      leading: Image.asset(AppImages.imagesProfile1Icon),
      trailing: Image.asset(AppImages.imagesForwardIosArrow),
    );
  }
}
