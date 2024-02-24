import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_constants.g.dart';

class HomePageConstants {
  final txtAppbarTitle = 'Individual Meetup';
  final txtSearch = 'Search';
  final txtPopularMeetups = 'Popular Meetups';
  final txtIndia = 'in India';
  final txtTrendingPopular = 'Trending Popular People';
  final txtAuthor = 'Author';
  final txt1028Meetups = '1,028 Meetups';
  final txtSeaMore = 'See More';
  final txtTopTrendMeetup = 'Trending Popular Meetups';
}

@riverpod
HomePageConstants homePageConstants(HomePageConstantsRef ref) {
  return HomePageConstants();
}
