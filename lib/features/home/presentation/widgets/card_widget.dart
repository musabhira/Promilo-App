import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo/core/constants/home_page_constants.dart';
import 'package:promilo/core/themes/app_theme.dart';

class MeetupCard extends ConsumerWidget {
  const MeetupCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(homePageConstantsProvider);
    final theme = AppTheme.of(context);
    return Padding(
      padding: EdgeInsets.all(theme.spaces.space_100),
      child: SizedBox(
        height: theme.spaces.space_100 * 21.25,
        child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Stack(children: [
              Card(
                color: theme.colors.textInverse,
                margin: EdgeInsets.all(theme.spaces.space_100),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: theme.colors.textSubtlest),
                    borderRadius:
                        BorderRadius.circular(theme.spaces.space_100)),
                child: Padding(
                  padding: EdgeInsets.all(theme.spaces.space_100),
                  child: SizedBox(
                    width: theme.spaces.space_100 * 33.75,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 45,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 4, top: 4),
                                child: CircleAvatar(
                                  radius: theme.spaces.space_100 * 2.25,
                                  backgroundImage: const NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn0aHczOvjGX7OGJqUGFp0l5GCe6DKSvJF7nrXA-D1EKiUS_UcdYPVbiXOFg3sVsoPU7w&usqp=CAU'),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: theme.spaces.space_100),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(constants.txtAuthor,
                                        style: theme.typography.h200),
                                    Text(constants.txt1028Meetups,
                                        style: theme.typography.h900),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                        SizedBox(
                          height: theme.spaces.space_100 * 6.25,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: theme.spaces.space_100,
                          ),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              height: theme.spaces.space_300,
                              width: theme.spaces.space_100 * 10,
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 25,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: theme.colors.secondary,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    constants.txtSeaMore,
                                    style: TextStyle(
                                      color: theme.colors.textInverse,
                                      fontSize: theme.spaces.space_100 * 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: theme.spaces.space_100 * 9.75,
                  left: theme.spaces.space_100 * 2.5,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyJS0mc7rt_X4WwhvitXOUNf8ulSM9JdLLVw&usqp=CAU'),
                  )),
              Positioned(
                  top: theme.spaces.space_100 * 9.75,
                  left: theme.spaces.space_100 * 6.25,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://wallpapers.com/images/hd/instagram-profile-pictures-kx8z30go1u5u0q31.jpg'),
                  )),
              Positioned(
                  top: theme.spaces.space_100 * 9.75,
                  left: theme.spaces.space_100 * 10,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyJS0mc7rt_X4WwhvitXOUNf8ulSM9JdLLVw&usqp=CAU'),
                  )),
              Positioned(
                  top: theme.spaces.space_100 * 9.75,
                  left: theme.spaces.space_100 * 13.75,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg'),
                  )),
              Positioned(
                  top: theme.spaces.space_100 * 9.75,
                  left: theme.spaces.space_100 * 17.5,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyJS0mc7rt_X4WwhvitXOUNf8ulSM9JdLLVw&usqp=CAU'),
                  )),
            ]);
          },
        ),
      ),
    );
  }
}
// Card(
//               margin: const EdgeInsets.all(10.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const ListTile(
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                         'https://iuk.ktn-uk.org/wp-content/uploads/2021/01/AdobeStock_375393450-scaled-e1611136805546.jpeg',
//                       ),
//                     ),
//                     title: Text('Author'),
//                     subtitle: Text('Meetups'),
//                   ),
//                   const Divider(),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: List.generate(
//                         5,
//                         (index) => CircleAvatar(
//                           // Generate initials from "Author" (replace with actual data)
//                           backgroundImage: NetworkImage(
//                             'https://ui-avatars.com/api/?name=${'Author'[0]}${index + 1}',
//                           ),
//                           radius: 15,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const Spacer(),
//                   Align(
//                     alignment: Alignment.bottomRight,
//                     child: TextButton(
//                       onPressed: () {},
//                       child: const Text('See More'),
//                     ),
//                   ),
//                 ],
//               ),
//             );
