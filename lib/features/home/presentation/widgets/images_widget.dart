import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/constants/home_page_constants.dart';
import 'package:promilo/core/themes/app_theme.dart';

final imageProvider = StateProvider<int>((ref) => 0);

class ImageWidget extends ConsumerWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(homePageConstantsProvider);
    final theme = AppTheme.of(context);
    var currentIndex = ref.watch(imageProvider);
    final pageController = PageController(initialPage: currentIndex);

    final List<String> imageUrls = [
      'https://www.raah.org.in/wp-content/uploads/2019/09/brainstorming-chatting-communicating-2962135-1-1024x574.jpg',
      'https://www.raah.org.in/wp-content/uploads/2019/09/brainstorming-chatting-communicating-2962135-1-1024x574.jpg',
      'https://www.raah.org.in/wp-content/uploads/2019/09/brainstorming-chatting-communicating-2962135-1-1024x574.jpg',
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_100),
      child: SizedBox(
        height: theme.spaces.space_100 * 28,
        child: Column(
          children: [
            SizedBox(
              height: theme.spaces.space_100 * 25,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (index) => currentIndex = index,
                itemCount: imageUrls.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          imageUrls[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: theme.spaces.space_500,
                        left: theme.spaces.space_300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(constants.txtPopularMeetups,
                                style: theme.typography.h500),
                            Text(constants.txtIndia,
                                style: theme.typography.h500),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  imageUrls.length,
                  (index) => InkWell(
                    onTap: () => pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.ease,
                    ),
                    child: DotsIndicator(
                      dotsCount: 1,
                      position: 0,
                      decorator: DotsDecorator(
                        color: theme.colors.text,
                        activeColor: index == currentIndex
                            ? theme.colors.text
                            : theme.colors.textSubtlest,
                        size: Size.square(theme.spaces.space_100),
                        activeSize: Size(
                            theme.spaces.space_100, theme.spaces.space_100),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
