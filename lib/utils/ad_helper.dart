import 'dart:io';

import '../core/constants/ad_unit_id.dart';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return adUnitId;
    } else if (Platform.isIOS) {
      return adUnitId;
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return adUnitId;
    } else if (Platform.isIOS) {
      return adUnitId;
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  static String get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return adUnitId;
    } else if (Platform.isIOS) {
      return adUnitId;
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }
}
