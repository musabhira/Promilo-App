import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/themes/app_theme.dart';

class TextFieldWidget extends ConsumerWidget {
  final String hintText;
  final TextStyle hintStyle;
  final TextEditingController controller;
  final String? Function(String? value)? validator;
  final void Function(String)? onChanged;
  const TextFieldWidget({
    super.key,
    required this.hintText,
    required this.hintStyle,
    required this.controller,
    required this.validator,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = AppTheme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: theme.spaces.space_300,
        vertical: theme.spaces.space_100,
      ),
      child: TextFormField(
        controller: controller,
        validator: validator,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(theme.spaces.space_100),
              borderSide: BorderSide(
                color: theme.colors.secondary,
              )),
          contentPadding: EdgeInsets.symmetric(
              horizontal: theme.spaces.space_200,
              vertical: theme.spaces.space_100 * 1.5),
        ),
      ),
    );
  }
}
