import 'package:flutter/material.dart';
import 'package:magic_hat/presentation/home_page/dtos/character_dto.dart';
import 'package:magic_hat/presentation/widgets/app_cached_image.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    required this.dto,
    required this.onTap,
    required this.onPressRetry,
    super.key,
  });
  final CharacterDto dto;
  final void Function() onTap;
  final void Function() onPressRetry;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            _CardImage(
              url: dto.imageUrl,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dto.fullName,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Attempts: ${dto.attempts}'),
                ],
              ),
            ),
            if (!dto.hasGuessed)
              IconButton(
                onPressed: onPressRetry,
                icon: const Icon(
                  Icons.refresh_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            if (dto.hasGuessed)
              const DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 30,
                ),
              )
            else
              const DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: Icon(
                  Icons.cancel,
                  color: Colors.white,
                  size: 30,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _CardImage extends StatelessWidget {
  const _CardImage({required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return AppCachedImage(
      imageUrl: url,
      width: 32,
      height: 46,
      errorWidget: const Center(
        child: Text(
          '?',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
