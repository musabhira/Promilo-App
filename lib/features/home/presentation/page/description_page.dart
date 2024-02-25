import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/constants/description_page_constant.dart';
import 'package:promilo/core/themes/app_theme.dart';
import 'package:promilo/features/home/presentation/widgets/app_bar_widget.dart';
import 'package:promilo/features/home/presentation/widgets/dotdecorator_widget.dart';
import 'package:promilo/features/home/presentation/widgets/icons_widget.dart';
import 'package:promilo/features/home/presentation/widgets/image_page_view_widget.dart';
import 'package:promilo/features/home/presentation/widgets/row_description_widget.dart';
import 'package:promilo/features/home/presentation/widgets/sea%20_more_widget.dart';

final isExpandedProvider = StateProvider<bool>((ref) => false);

class DescriptionPage extends ConsumerWidget {
  static const routePath = '/DescriptionPage';
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(descriptionPageConstantsProvider);
    final theme = AppTheme.of(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(theme.spaces.space_700),
        child: AppBarWidget(
          text: constants.txtAppbarTitle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Stack(
              children: [
                IconWidget(),
                ImagePageViewWidget(),
                DotDecoratorWidget(),
              ],
            ),
            const RowDescriptionWidget(),
            SizedBox(
              height: theme.spaces.space_100 * 2.5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_200),
              child: Text(
                constants.txtActorName,
                style: theme.typography.h700,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_200),
              child: Text(
                constants.txtIndianActress,
                style: theme.typography.h900,
              ),
            ),
            SizedBox(
              height: theme.spaces.space_100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_200),
              child: Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: theme.colors.textDisabled,
                    size: theme.spaces.space_200,
                  ),
                  SizedBox(width: theme.spaces.space_100),
                  Text(constants.txtDuration, style: theme.typography.h900),
                ],
              ),
            ),
            SizedBox(
              height: theme.spaces.space_100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_200),
              child: Row(
                children: [
                  Icon(
                    Icons.wallet,
                    color: theme.colors.textDisabled,
                    size: theme.spaces.space_200,
                  ),
                  SizedBox(width: theme.spaces.space_100),
                  Text(constants.txtTotalAverage, style: theme.typography.h900),
                ],
              ),
            ),
            SizedBox(
              height: theme.spaces.space_100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_200),
              child: Text(
                constants.txtAbout,
                style: theme.typography.h700,
              ),
            ),
            SizedBox(
              height: theme.spaces.space_100,
            ),
            const SeaMoreWidget(),
            SizedBox(
              height: theme.spaces.space_100 * 7.5,
            )
          ],
        ),
      ),
    );
  }
}
