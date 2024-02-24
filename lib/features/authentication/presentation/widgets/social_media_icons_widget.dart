import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/themes/app_theme.dart';

class SocialMediaIconsWidget extends ConsumerWidget {
  const SocialMediaIconsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = AppTheme.of(context);
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(theme.spaces.space_125),
            child: SizedBox(
                height: theme.spaces.space_100 * 4.375,
                width: theme.spaces.space_100 * 4.375,
                child: Image.asset('asserts/google.png')),
          ),
          Padding(
            padding: EdgeInsets.all(theme.spaces.space_125),
            child: SizedBox(
                height: theme.spaces.space_100 * 4.375,
                width: theme.spaces.space_100 * 4.375,
                child: Image.asset('asserts/linkdin.png')),
          ),
          Padding(
            padding: EdgeInsets.all(theme.spaces.space_125),
            child: SizedBox(
                height: theme.spaces.space_100 * 4.375,
                width: theme.spaces.space_100 * 4.375,
                child: Image.asset('asserts/facebook.png')),
          ),
          Padding(
            padding: EdgeInsets.all(theme.spaces.space_125),
            child: SizedBox(
                height: theme.spaces.space_100 * 4.375,
                width: theme.spaces.space_100 * 4.375,
                child: Image.asset('asserts/instagram.jpg')),
          ),
          Padding(
            padding: EdgeInsets.all(theme.spaces.space_125),
            child: SizedBox(
                height: theme.spaces.space_100 * 4.375,
                width: theme.spaces.space_100 * 4.375,
                child: Image.asset('asserts/whatsapp.jpg')),
          ),
        ],
      ),
    );
  }
}
