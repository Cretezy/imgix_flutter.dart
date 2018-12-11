import 'package:flutter/material.dart';
import 'package:imgix/imgix.dart';

/// Get an [ImageProvider] for an Imgix image
ImageProvider getImgixProvider(
  String url, {
  ImgixOptions options,
  double scale = 1.0,
  Map<String, String> headers,
}) {
  return NetworkImage(
    getImgixUrl(url, options),
    scale: scale,
    headers: headers,
  );
}

/// An [Image] wrapper for an Imgix image
class ImgixImage extends StatelessWidget {
  /// Image source URL
  final String src;

  /// Imgix options
  final ImgixOptions options;

  // Same as [NetworkImage]
  final double scale;
  final Map<String, String> headers;

  // Same as [Image]
  final double width;
  final double height;
  final Color color;
  final FilterQuality filterQuality;
  final BlendMode colorBlendMode;
  final BoxFit fit;
  final AlignmentGeometry alignment;
  final ImageRepeat repeat;
  final Rect centerSlice;
  final bool matchTextDirection;
  final bool gaplessPlayback;
  final String semanticLabel;
  final bool excludeFromSemantics;

  ImgixImage(
    this.src, {
    Key key,
    this.options,
    this.scale = 1.0,
    this.headers,
    this.semanticLabel,
    this.excludeFromSemantics = false,
    this.width,
    this.height,
    this.color,
    this.colorBlendMode,
    this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
    this.matchTextDirection = false,
    this.gaplessPlayback = false,
    this.filterQuality = FilterQuality.low,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: getImgixProvider(
        src,
        options: options,
        headers: headers,
        scale: scale,
      ),
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      filterQuality: filterQuality,
    );
  }
}
