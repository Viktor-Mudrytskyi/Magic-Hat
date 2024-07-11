import 'package:flutter/material.dart';
import 'package:magic_hat/presentation/widgets/app_cached_image.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({required this.url, super.key});
  final String url;

  @override
  Widget build(BuildContext context) {
    return AppCachedImage(
      imageUrl: url,
      width: 160,
      height: 230,
      errorWidget: const Center(
        child: Text(
          '?',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
