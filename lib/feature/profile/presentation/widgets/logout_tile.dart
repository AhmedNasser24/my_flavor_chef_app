import 'package:chef_app/core/languages/locale_keys.g.dart';
import 'package:chef_app/core/utils/themes/app_colors.dart';
import 'package:chef_app/core/utils/themes/app_font_style.dart';
import 'package:chef_app/core/utils/themes/app_images.dart';
import 'package:chef_app/core/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LogoutTile extends StatelessWidget {
  const LogoutTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.black11,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        onTap: () {
          confirmLogoutDialog(context);
        },
        title: Text(
          LocaleKeys.logout.tr(),
          style: AppFontStyle.regular16Primary,
        ),
        leading: Image.asset(AppImages.imagesLogoutIcon),
      ),
    );
  }
}

confirmLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: AppColors.black11,

      content: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 400),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Gap(10),
            Image.asset(AppImages.imagesShutDownIcon),
            Gap(20),
            Text(
              LocaleKeys.logout_title.tr(),
              style: AppFontStyle.bold20White,
              textAlign: TextAlign.center,
            ),
            Gap(16),
            Text(
              LocaleKeys.logout_subtitle.tr(),
              style: AppFontStyle.regular16WhiteE7,
              textAlign: TextAlign.center,
            ),
            Gap(40),
            CustomButton(
              title: LocaleKeys.confirm_logout.tr(),
              textStyle: AppFontStyle.semiBold16WhiteFA,
              color: AppColors.red,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    ),
  );
}
