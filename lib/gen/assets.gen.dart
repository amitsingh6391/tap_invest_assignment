/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow_back.svg
  String get arrowBack => 'assets/icons/arrow_back.svg';

  /// File path: assets/icons/bulb.svg
  String get bulb => 'assets/icons/bulb.svg';

  /// File path: assets/icons/check.svg
  String get check => 'assets/icons/check.svg';

  /// File path: assets/icons/check_bg.svg
  String get checkBg => 'assets/icons/check_bg.svg';

  /// File path: assets/icons/complete_flag.svg
  String get completeFlag => 'assets/icons/complete_flag.svg';

  /// File path: assets/icons/contract.svg
  String get contract => 'assets/icons/contract.svg';

  /// File path: assets/icons/doc.svg
  String get doc => 'assets/icons/doc.svg';

  /// File path: assets/icons/download.svg
  String get download => 'assets/icons/download.svg';

  /// File path: assets/icons/info_circle.svg
  String get infoCircle => 'assets/icons/info_circle.svg';

  /// File path: assets/icons/pitch_deck.svg
  String get pitchDeck => 'assets/icons/pitch_deck.svg';

  /// List of all assets
  List<String> get values => [
        arrowBack,
        bulb,
        check,
        checkBg,
        completeFlag,
        contract,
        doc,
        download,
        infoCircle,
        pitchDeck
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/agrizy_logo.svg
  String get agrizyLogo => 'assets/images/agrizy_logo.svg';

  /// File path: assets/images/companies_logo.svg
  String get companiesLogo => 'assets/images/companies_logo.svg';

  /// File path: assets/images/contract.png
  AssetGenImage get contract =>
      const AssetGenImage('assets/images/contract.png');

  /// File path: assets/images/dots.svg
  String get dots => 'assets/images/dots.svg';

  /// List of all assets
  List<dynamic> get values => [agrizyLogo, companiesLogo, contract, dots];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/background_flow.json
  String get backgroundFlow => 'assets/lottie/background_flow.json';

  /// List of all assets
  List<String> get values => [backgroundFlow];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
