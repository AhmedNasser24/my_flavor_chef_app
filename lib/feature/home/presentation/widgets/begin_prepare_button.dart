import 'package:chef_app/core/languages/locale_keys.g.dart';
import 'package:chef_app/core/utils/themes/app_font_style.dart';
import 'package:chef_app/core/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BeginPrepareButton extends StatelessWidget {
  const BeginPrepareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      title : LocaleKeys.prepare.tr(),
      textStyle: AppFontStyle.semiBold14White,
    );
  }
}