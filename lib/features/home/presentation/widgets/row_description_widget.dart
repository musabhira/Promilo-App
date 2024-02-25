import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/themes/app_theme.dart';

class RowDescriptionWidget extends ConsumerWidget {
  const RowDescriptionWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = AppTheme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_200),
      child: Row(
        children: [
          Icon(
            Icons.bookmark_outline,
            size: theme.spaces.space_100 * 2.5,
            color: theme.colors.secondary,
          ),
          SizedBox(
            width: theme.spaces.space_100 * 1.25,
          ),
          Text(
            '1034',
            style: theme.typography.h700,
          ),
          SizedBox(
            width: theme.spaces.space_100 * 1.25,
          ),
          Icon(
            Icons.favorite_outline,
            size: theme.spaces.space_100 * 2.5,
            color: theme.colors.secondary,
          ),
          SizedBox(
            width: theme.spaces.space_100 * 1.25,
          ),
          Text(
            '1034',
            style: theme.typography.h700,
          ),
          SizedBox(
            width: theme.spaces.space_100 * 1.25,
          ),
          Container(
            height: theme.spaces.space_200,
            width: theme.spaces.space_100 * 14.375,
            decoration: BoxDecoration(
              color: theme.colors.textSubtle,
              borderRadius: BorderRadius.circular(theme.spaces.space_200),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_100),
              child: Row(
                children: List.generate(5, (index) => _buildStar(index)),
              ),
            ),
          ),
          SizedBox(
            width: theme.spaces.space_100 * 1.25,
          ),
          Text(
            '3.2',
            style: TextStyle(color: theme.colors.secondary),
          )
        ],
      ),
    );
  }
}

Widget _buildStar(int index) {
  final opacity = (1.0 - (index / 5)).clamp(0.0, 1.0);
  final color = index == 5 ? Colors.white : Colors.blue;

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 1),
    child: Icon(
      Icons.star,
      color: color.withOpacity(opacity),
      size: 16,
    ),
  );
}
