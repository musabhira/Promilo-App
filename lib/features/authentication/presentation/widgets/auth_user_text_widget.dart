import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.only(left: 35, right: 2),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
