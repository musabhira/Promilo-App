import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/constants/home_page_constants.dart';
import 'package:promilo/core/themes/app_theme.dart';

class SearchTextFieldWidget extends ConsumerWidget {
  const SearchTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(homePageConstantsProvider);
    final theme = AppTheme.of(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_300),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: constants.txtSearch,
          hintStyle: theme.typography.h600,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(theme.spaces.space_100 * 1.25),
            borderSide: BorderSide(color: theme.colors.secondary, width: 3),
          ),
          prefixIcon: Icon(
            Icons.search_outlined,
            color: theme.colors.text,
            size: theme.spaces.space_100 * 3.75,
          ),
          suffixIcon: Icon(
            Icons.mic_none_rounded,
            color: Colors.black,
            size: theme.spaces.space_100 * 3.75,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
        ),
      ),
    );
  }
}
