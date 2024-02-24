import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/constants/description_page_constant.dart';
import 'package:promilo/core/themes/app_theme.dart';
import 'package:promilo/features/home/presentation/widgets/app_bar_widget.dart';

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
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(theme.spaces.space_200),
                          topRight: Radius.circular(theme.spaces.space_200),
                          bottomLeft: Radius.circular(theme.spaces.space_100),
                          bottomRight: Radius.circular(theme.spaces.space_100)),
                      child: Container(
                        height: 400,
                        width: MediaQuery.of(context).size.width,
                        color: theme.colors.textSubtle,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.file_download_outlined,
                                  size: theme.spaces.space_100 * 3.75,
                                  color: theme.colors.textDisabled,
                                ),
                                Icon(
                                  Icons.bookmark_outline,
                                  size: theme.spaces.space_100 * 3.75,
                                  color: theme.colors.textDisabled,
                                ),
                                Icon(
                                  Icons.favorite_outline,
                                  size: theme.spaces.space_100 * 3.75,
                                  color: theme.colors.textDisabled,
                                ),
                                Icon(
                                  Icons.square_outlined,
                                  size: theme.spaces.space_100 * 3.75,
                                  color: theme.colors.text,
                                ),
                                Icon(
                                  Icons.star_border_outlined,
                                  size: theme.spaces.space_100 * 3.75,
                                  color: theme.colors.text,
                                ),
                                Icon(
                                  Icons.share_outlined,
                                  size: theme.spaces.space_100 * 3.75,
                                  color: theme.colors.text,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(theme.spaces.space_100),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(theme.spaces.space_200),
                      child: SizedBox(
                        height: 370,
                        child: PageView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            final imageUrls = [
                              'https://img.freepik.com/premium-photo/beach-wallpapers-that-will-make-your-desktop-look-beautiful_881308-842.jpg',
                              'https://i.pinimg.com/736x/d7/46/d9/d746d98d33ba9f4068c382cd0fbde00c.jpg',
                              'https://wallpapers.com/images/featured/iphone-dark-w49769dywehudag6.jpg',
                            ];
                            final imageUrl = imageUrls[index];
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.network(
                                  imageUrl,
                                  fit: BoxFit.cover,
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 85,
                    right: 150,
                    child: DotsIndicator(
                      dotsCount: 5,
                      position: 0,
                      decorator: DotsDecorator(
                        color: theme.colors.textSubtlest,
                        activeColor: theme.colors.textInverse,
                        size: Size.square(theme.spaces.space_100),
                        activeSize: Size(
                            theme.spaces.space_100, theme.spaces.space_100),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Icon(
                      Icons.bookmark_outline,
                      size: 20,
                      color: theme.colors.secondary,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '1034',
                      style: theme.typography.h700,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.favorite_outline,
                      size: 20,
                      color: theme.colors.secondary,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '1034',
                      style: theme.typography.h700,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 17,
                      width: 115,
                      decoration: BoxDecoration(
                        color: theme.colors.textSubtle,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children:
                              List.generate(5, (index) => _buildStar(index)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '3.2',
                      style: TextStyle(color: theme.colors.secondary),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: theme.spaces.space_200),
                child: Text(
                  constants.txtActorName,
                  style: theme.typography.h700,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: theme.spaces.space_200),
                child: Text(
                  constants.txtIndianActress,
                  style: theme.typography.h900,
                ),
              ),
              SizedBox(
                height: theme.spaces.space_100,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: theme.spaces.space_200),
                child: Row(
                  children: [
                    Icon(
                      Icons.access_time, // Use appropriate icon
                      color:
                          theme.colors.textDisabled, // Adjust color as needed
                      size: 16,
                      // Adjust size as needed
                    ),
                    const SizedBox(
                        width: 8.0), // Add spacing between icon and text
                    Text(
                        constants.txtDuration, // Replace with your desired text
                        style: theme.typography.h900),
                  ],
                ),
              ),
              SizedBox(
                height: theme.spaces.space_100,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: theme.spaces.space_200),
                child: Row(
                  children: [
                    Icon(
                      Icons.wallet,
                      color: theme.colors.textDisabled,
                      size: 16,
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                        constants
                            .txtTotalAverage, // Replace with your desired text
                        style: theme.typography.h900),
                  ],
                ),
              ),
              SizedBox(
                height: theme.spaces.space_100,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: theme.spaces.space_200),
                child: Text(
                  constants.txtAbout,
                  style: theme.typography.h700,
                ),
              ),
              SizedBox(
                height: theme.spaces.space_100,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: theme.spaces.space_200),
                child: Expanded(
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
                              ref.watch(isExpandedProvider)
                                  ? 'See less'
                                  : 'See more',
                              style: TextStyle(color: theme.colors.secondary),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
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
