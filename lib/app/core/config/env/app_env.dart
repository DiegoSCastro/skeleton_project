sealed class AppEnv {
  static const baseUrl = String.fromEnvironment('baseUrl');

  static const admobAppId = String.fromEnvironment('admob_app_id');
  static const admobInterstitialId = String.fromEnvironment('admob_interstitial_id');
  static const admobOpenAppId = String.fromEnvironment('admob_openapp_id');
  static const admobBannerId = String.fromEnvironment('admob_banner_id');
}
