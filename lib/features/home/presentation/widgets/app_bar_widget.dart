import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:promilo/core/constants/home_page_constants.dart';
import 'package:promilo/core/themes/app_theme.dart';

class AppBarWidget extends ConsumerWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(homePageConstantsProvider);
    final theme = AppTheme.of(context);
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      titleSpacing: theme.spaces.space_400,
      elevation: 3,
      surfaceTintColor: Colors.white,
      shadowColor: Colors.black,
      title: Transform.translate(
        offset: Offset(-theme.spaces.space_300, 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Ink(
              child: InkWell(
                borderRadius: BorderRadius.circular(theme.spaces.space_100),
                onTap: () => context.pop(),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: theme.colors.text,
                    size: 20,
                  ),
                  onPressed: () {
                    // Navigator.pop(context);
                  },
                ),
              ),
            ),
            Text(
              constants.txtAppbarTitle,
              style: TextStyle(
                color: AppTheme.of(context).colors.text,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
