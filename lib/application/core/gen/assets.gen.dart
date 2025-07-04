/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/png
  $AssetsImagesPngGen get png => const $AssetsImagesPngGen();

  /// Directory path: assets/images/svg
  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();
}

class $AssetsImagesPngGen {
  const $AssetsImagesPngGen();

  /// File path: assets/images/png/banner.png
  AssetGenImage get banner => const AssetGenImage('assets/images/png/banner.png');

  /// File path: assets/images/png/beauty.png
  AssetGenImage get beauty => const AssetGenImage('assets/images/png/beauty.png');

  /// File path: assets/images/png/fashion.png
  AssetGenImage get fashion => const AssetGenImage('assets/images/png/fashion.png');

  /// File path: assets/images/png/filter.png
  AssetGenImage get filter => const AssetGenImage('assets/images/png/filter.png');

  /// File path: assets/images/png/google 1.png
  AssetGenImage get google1Png => const AssetGenImage('assets/images/png/google 1.png');

  /// File path: assets/images/png/google 1.svg
  SvgGenImage get google1Svg => const SvgGenImage('assets/images/png/google 1.svg');

  /// File path: assets/images/png/kids.png
  AssetGenImage get kids => const AssetGenImage('assets/images/png/kids.png');

  /// File path: assets/images/png/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/png/logo.png');

  /// File path: assets/images/png/mens.png
  AssetGenImage get mens => const AssetGenImage('assets/images/png/mens.png');

  /// File path: assets/images/png/onboarding_1.png
  AssetGenImage get onboarding1 =>
      const AssetGenImage('assets/images/png/onboarding_1.png');

  /// File path: assets/images/png/onboarding_2.png
  AssetGenImage get onboarding2 =>
      const AssetGenImage('assets/images/png/onboarding_2.png');

  /// File path: assets/images/png/onboarding_3.png
  AssetGenImage get onboarding3 =>
      const AssetGenImage('assets/images/png/onboarding_3.png');

  /// File path: assets/images/png/sidemenu.png
  AssetGenImage get sidemenu => const AssetGenImage('assets/images/png/sidemenu.png');

  /// File path: assets/images/png/sort.png
  AssetGenImage get sort => const AssetGenImage('assets/images/png/sort.png');

  /// File path: assets/images/png/unsplash.png
  AssetGenImage get unsplash => const AssetGenImage('assets/images/png/unsplash.png');

  /// File path: assets/images/png/userpic.png
  AssetGenImage get userpic => const AssetGenImage('assets/images/png/userpic.png');

  /// File path: assets/images/png/women.png
  AssetGenImage get women => const AssetGenImage('assets/images/png/women.png');

  /// List of all assets
  List<dynamic> get values => [
    banner,
    beauty,
    fashion,
    filter,
    google1Png,
    google1Svg,
    kids,
    logo,
    mens,
    onboarding1,
    onboarding2,
    onboarding3,
    sidemenu,
    sort,
    unsplash,
    userpic,
    women,
  ];
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();

  /// File path: assets/images/svg/apple.svg
  SvgGenImage get apple => const SvgGenImage('assets/images/svg/apple.svg');

  /// File path: assets/images/svg/facebook.svg
  SvgGenImage get facebook => const SvgGenImage('assets/images/svg/facebook.svg');

  /// File path: assets/images/svg/google.svg
  SvgGenImage get google => const SvgGenImage('assets/images/svg/google.svg');

  /// List of all assets
  List<SvgGenImage> get values => [apple, facebook, google];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
