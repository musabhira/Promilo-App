import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:promilo/core/constants/home_page_constants.dart';
import 'package:promilo/core/themes/app_theme.dart';
import 'package:promilo/features/home/presentation/page/description_page.dart';

class TopImageWidget extends ConsumerWidget {
  TopImageWidget({super.key});

  final List<String> imageUrls = [
    'https://media.licdn.com/dms/image/D5603AQGACIoHxJ99Tw/profile-displayphoto-shrink_800_800/0/1695010201798?e=2147483647&v=beta&t=ypci0xcwmK1gKJDYGsaIemnlI89vEclnmMsSlycW6p4',
    'https://images.pexels.com/photos/9454915/pexels-photo-9454915.jpeg?cs=srgb&dl=pexels-mo-eid-9454915.jpg&fm=jpg',
    'https://cutewallpaper.org/37x/vgcpzubqr/3055828772.jpg',
    'https://images.pexels.com/photos/9454915/pexels-photo-9454915.jpeg?cs=srgb&dl=pexels-mo-eid-9454915.jpg&fm=jpg',
    'https://i.pinimg.com/736x/58/bd/4f/58bd4fc9ebfccc1f2de419529bbf1a12.jpg',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = AppTheme.of(context);
    return InkWell(
      onTap: () => context.push(DescriptionPage.routePath),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              final imageUrl = imageUrls[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(children: [
                    Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      width: 180,
                      height: 200,
                    ),
                    Positioned(
                      top: 130,
                      right: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(theme.spaces.space_100)),
                        child: Container(
                          width: 60,
                          height: 60,
                          color: theme.colors.textInverse,
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: theme.spaces.space_100),
                            child: Text("0${index + 1}",
                                style: theme.typography.h1000),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
