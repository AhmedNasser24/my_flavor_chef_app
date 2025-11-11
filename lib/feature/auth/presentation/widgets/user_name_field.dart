import 'package:chef_app/core/languages/locale_keys.g.dart';
import 'package:chef_app/core/utils/themes/app_images.dart';
import 'package:chef_app/core/widgets/custom_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class UserNameField extends StatelessWidget {
  const UserNameField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: LocaleKeys.user_name.tr(),
      prefixIcon: Image.asset(AppImages.imagesPersonIcon),
    );
  }
}