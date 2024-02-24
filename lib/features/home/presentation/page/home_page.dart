import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/constants/home_page_constants.dart';
import 'package:promilo/core/themes/app_theme.dart';
import 'package:promilo/features/home/presentation/widgets/app_bar_widget.dart';
import 'package:promilo/features/home/presentation/widgets/search_textfield_widget.dart';

class HomePage extends ConsumerWidget {
  static const routePath = '/Home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(homePageConstantsProvider);
    final theme = AppTheme.of(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(theme.spaces.space_700),
        child: const AppBarWidget(),
      ),
      body: Column(
        children: [
          SizedBox(
            height: theme.spaces.space_200,
          ),
          const SearchTextFieldWidget()
        ],
      ),
    );
  }
}
