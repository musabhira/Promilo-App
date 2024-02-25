import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/constants/description_page_constant.dart';
import 'package:promilo/core/themes/app_theme.dart';
import 'package:promilo/features/home/presentation/page/description_page.dart';

class SeaMoreWidget extends ConsumerWidget {
  const SeaMoreWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(descriptionPageConstantsProvider);
    final theme = AppTheme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_200),
      child: Column(
        children: [
          Text(
            constants.txtdemoParagraph,
            style: theme.typography.h900,
            maxLines: ref.watch(isExpandedProvider) ? null : 2,
          ),
          Row(
            children: [
              const Spacer(),
              TextButton(
                onPressed: () => ref
                    .read(isExpandedProvider.notifier)
                    .update((state) => !state),
                child: Text(
                  ref.watch(isExpandedProvider) ? 'See less' : 'See more',
                  style: TextStyle(color: theme.colors.secondary),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
