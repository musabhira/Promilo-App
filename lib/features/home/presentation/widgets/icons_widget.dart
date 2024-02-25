import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/themes/app_theme.dart';
import 'package:share_plus/share_plus.dart';

class IconWidget extends ConsumerWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = AppTheme.of(context);
    return Padding(
      padding: EdgeInsets.all(theme.spaces.space_200),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(theme.spaces.space_200),
            topRight: Radius.circular(theme.spaces.space_200),
            bottomLeft: Radius.circular(theme.spaces.space_100),
            bottomRight: Radius.circular(theme.spaces.space_100)),
        child: Container(
          height: theme.spaces.space_100 * 50,
          width: MediaQuery.of(context).size.width,
          color: theme.colors.textSubtle,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: theme.spaces.space_100),
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
                  GestureDetector(
                    onTap: () async {
                      const content = 'hello';

                      try {
                        await Share.share(content);
                      } catch (error) {
                        debugPrint(error.toString());
                      }

                      showModalBottomSheet(
                        backgroundColor: theme.colors.textDisabled,
                        // ignore: use_build_context_synchronously
                        context: context,
                        builder: (context) => SizedBox(
                          height: 300,
                          child: Center(
                              child: Text(
                            'Loding ......',
                            style: TextStyle(color: theme.colors.textInverse),
                          )),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.share_outlined,
                      size: theme.spaces.space_100 * 3.75,
                      color: theme.colors.text,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
