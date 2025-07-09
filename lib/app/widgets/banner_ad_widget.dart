// import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
// import '../app.dart';

// class BannerAdWidget extends StatefulWidget {
//   final AdSize size;
//   const BannerAdWidget({super.key, this.size = AdSize.banner});

//   @override
//   State<BannerAdWidget> createState() => _BannerAdWidgetState();
// }

// class _BannerAdWidgetState extends State<BannerAdWidget> {
//   BannerAd? _bannerAd;
//   bool _isLoaded = false;

//   @override
//   void initState() {
//     super.initState();
//     _bannerAd = injection<AdService>().createBannerAd(
//       size: widget.size,
//       onAdLoaded: () => setState(() => _isLoaded = true),
//       onAdFailedToLoad: () => setState(() => _isLoaded = false),
//     )..load();
//   }

//   @override
//   void dispose() {
//     _bannerAd?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (!_isLoaded || _bannerAd == null) return const SizedBox.shrink();
//     return SizedBox(
//       height: _bannerAd!.size.height.toDouble(),
//       width: _bannerAd!.size.width.toDouble(),
//       child: AdWidget(ad: _bannerAd!),
//     );
//   }
// }
