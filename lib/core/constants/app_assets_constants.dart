import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_assets_constants.g.dart';

final class AppAssetsConstants {
  static const _iconsPath = 'assets/icons/ic_';

  final icArrowBackward = '${_iconsPath}arrow_backward_icon.svg';
}

@riverpod
AppAssetsConstants appAssetsConstants(AppAssetsConstantsRef ref) {
  return AppAssetsConstants();
}
