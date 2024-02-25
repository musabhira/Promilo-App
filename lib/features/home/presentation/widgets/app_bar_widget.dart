import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:promilo/core/themes/app_theme.dart';
import 'package:promilo/core/widgets/bottom_nav_widget.dart';

class AppBarWidget extends ConsumerWidget {
  final String text;
  const AppBarWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                    size: theme.spaces.space_100 * 2.5,
                  ),
                  onPressed: () {
                    context.pushReplacement(BottomNaviWidet.routePath);
                  },
                ),
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color: AppTheme.of(context).colors.text,
                fontSize: theme.spaces.space_100 * 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
