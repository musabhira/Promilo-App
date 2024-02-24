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
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: constants.txtSearch,
            hintStyle: theme.typography.h600,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.red, width: 3),
            ),
            prefixIcon: Icon(
              Icons.search_outlined,
              color: theme.colors.text,
              size: 30,
            ),
            suffixIcon: const Icon(
              Icons.mic_none_rounded,
              color: Colors.black,
              size: 30,
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
          ),
        ),
      ),
    );
  }
}
