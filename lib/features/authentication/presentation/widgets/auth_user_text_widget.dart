import 'package:flutter/material.dart';
import 'package:promilo/core/themes/app_theme.dart';

class AuthUserTextWidget extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  const AuthUserTextWidget({
    super.key,
    required this.text,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: AppTheme.of(context).spaces.space_100 * 4.375, right: 2),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
