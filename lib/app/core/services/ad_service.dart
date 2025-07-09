// import 'dart:developer';
// import 'package:flutter/foundation.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

// import '../../app.dart';

//TODO: Configurar ID de servicios de AdMob - iOS e Android, pode causar crash se nao estiver configurado

// class AdService {
//   bool _initialized = false;

//   String get _interstitialAdId =>
//       kDebugMode ? AppTestEnv.admobInterstitialId : AppEnv.admobInterstitialId;

//   String get _openAppAdId => kDebugMode ? AppTestEnv.admobOpenAppId : AppEnv.admobOpenAppId;
//   String get _bannerAdId => kDebugMode ? AppTestEnv.admobBannerId : AppEnv.admobBannerId;

//   Future<void> initialize() async {
//     if (!_initialized) {
//       await MobileAds.instance.initialize();
//       _initialized = true;
//     }
//   }

//   void loadAndShowInterstitialAd() {
//     InterstitialAd.load(
//       adUnitId: _interstitialAdId,
//       request: const AdRequest(),
//       adLoadCallback: InterstitialAdLoadCallback(
//         onAdLoaded: (ad) {
//           try {
//             ad.show();
//           } catch (e) {
//             log('Error showing InterstitialAd: $e');
//             ad.dispose();
//           }
//         },
//         onAdFailedToLoad: (error) {
//           log('InterstitialAd failed to load: $error');
//         },
//       ),
//     );
//   }

//   void loadAndShowOpenAd() {
//     AppOpenAd.load(
//       adUnitId: _openAppAdId,
//       request: const AdRequest(),
//       adLoadCallback: AppOpenAdLoadCallback(
//         onAdLoaded: (ad) {
//           try {
//             ad.show();
//           } catch (e) {
//             log('Error showing AppOpenAd: $e');
//             ad.dispose();
//           }
//         },
//         onAdFailedToLoad: (error) {
//           log('AppOpenAd failed to load: $error');
//         },
//       ),
//     );
//   }

//   BannerAd createBannerAd({
//     AdSize size = AdSize.banner,
//     Function()? onAdLoaded,
//     Function()? onAdFailedToLoad,
//   }) {
//     return BannerAd(
//       adUnitId: _bannerAdId,
//       size: size,
//       request: const AdRequest(),
//       listener: BannerAdListener(
//         onAdLoaded: (ad) => onAdLoaded?.call(),
//         onAdFailedToLoad: (ad, error) {
//           ad.dispose();
//           onAdFailedToLoad?.call();
//           log('BannerAd failed to load: $error');
//         },
//       ),
//     );
//   }
// }
