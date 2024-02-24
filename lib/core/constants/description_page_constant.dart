import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'description_page_constant.g.dart';

class DescriptionPageConstants {
  final txtAppbarTitle = 'Description';
  final txtActorName = 'Actor Name';
  final txtIndianActress = 'Indian Actress';
  final txtDuration = 'Duration 20 Min';
  final txtTotalAverage = 'Total Average Fee ₹9,999';
  final txtdemoParagraph =
      '"In this app, the _buildStar function dynamically generates star icons with varying opacities based on an index value. These stars serve as visual indicators of a rating or score. By adjusting the opacity, the stars provide a subtle yet intuitive way to represent different levels or tiers. The Icons.star symbolizes excellence, while the blue color adds a touch of vibrancy to the interface. With each star having a size of 16 pixels, they neatly complement other elements on the screen, contributing to a cohesive and polished user experience."';
  final txtAbout = 'About';
}

@riverpod
DescriptionPageConstants descriptionPageConstants(
    DescriptionPageConstantsRef ref) {
  return DescriptionPageConstants();
}
