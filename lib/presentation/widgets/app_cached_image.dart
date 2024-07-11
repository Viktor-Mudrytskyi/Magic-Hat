import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:magic_hat/presentation/widgets/app_progress_indicator.dart';

class AppCachedImage extends StatelessWidget {
  const AppCachedImage({
    required this.imageUrl,
    super.key,
    this.width = _defaultSize,
    this.errorWidget,
    this.boxDecoration,
    this.fit,
    this.height = _defaultSize,
  });

  final String imageUrl;
  final double width;
  final double height;
  final Widget? errorWidget;
  final BoxDecoration? boxDecoration;
  final BoxFit? fit;

  static const double _defaultSize = 56;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder: (context, imageProvider) {
          final decorImage = DecorationImage(
            image: imageProvider,
            fit: fit ?? BoxFit.cover,
          );
          return DecoratedBox(
            decoration: boxDecoration?.copyWith(image: decorImage) ??
                BoxDecoration(
                  image: decorImage,
                ),
          );
        },
        placeholder: (context, url) {
          return DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: const AppProgressIndicator(),
          );
        },
        fadeOutDuration: Duration.zero,
        fadeInDuration: Duration.zero,
        errorWidget: (context, url, error) => DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: errorWidget ?? const Icon(Icons.error, color: Colors.black),
        ),
      ),
    );
  }
}
