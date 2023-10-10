import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-9862595854015571/1148722334';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-9862595854015571/1148722334';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-9862595854015571/1148722334";
    } else if (Platform.isIOS) {
      return "ca-app-pub-9862595854015571/1148722334";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  static String get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-9862595854015571/1148722334";
    } else if (Platform.isIOS) {
      return "ca-app-pub-9862595854015571/1148722334";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }
}
