import 'package:chef_app/core/languages/locale_keys.g.dart';
import 'package:chef_app/core/utils/themes/app_colors.dart';
import 'package:chef_app/core/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CancelOrderButton extends StatelessWidget {
  const CancelOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      title: LocaleKeys.cancel_order.tr(),
      borderColor: AppColors.white ,
      color: Colors.transparent,
      onTap: () {},
    );
  }
}