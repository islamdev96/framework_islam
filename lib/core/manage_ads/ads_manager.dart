import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdsManager {
  static bool testMode = false;

  late InterstitialAd? interstitialAd;
  int numInterstitialLoadAttempts = 0;

  static String get bannerAdUnitId {
    if (testMode == true) {
      return 'ca-app-pub-3940256099942544/6300978111';
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get rewardedAdUnitId {
    if (testMode == true) {
      return 'ca-app-pub-3940256099942544/5224354917';
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/5224354917';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (testMode == true) {
      return 'ca-app-pub-3940256099942544/8691691433';
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/8691691433';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}
