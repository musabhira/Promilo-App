import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/constants/home_page_constants.dart';
import 'package:promilo/core/themes/app_theme.dart';
import 'package:promilo/features/home/presentation/widgets/app_bar_widget.dart';
import 'package:promilo/features/home/presentation/widgets/card_widget.dart';
import 'package:promilo/features/home/presentation/widgets/images_widget.dart';
import 'package:promilo/features/home/presentation/widgets/search_textfield_widget.dart';

class HomePage extends ConsumerWidget {
  static const routePath = '/Home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> imageUrls = [
      'https://blog.close.com/content/images/hubfs/315483/customer-meetup.jpeg',
      'https://via.placeholder.com/400x200',
      'https://via.placeholder.com/400x200',
    ];
    final constants = ref.watch(homePageConstantsProvider);
    final theme = AppTheme.of(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(theme.spaces.space_700),
        child: const AppBarWidget(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: theme.spaces.space_200,
          ),
          const SearchTextFieldWidget(),
          Padding(
            padding: EdgeInsets.all(theme.spaces.space_200),
            child: const ImageWidget(),
          ),
          Padding(
            padding: EdgeInsets.only(left: theme.spaces.space_200),
            child: Text(
              constants.txtTopTrendMeetup,
              style: theme.typography.h800,
            ),
          ),
          const MeetupCard()
        ],
      ),
    );
  }
}
