import 'package:flutter/material.dart';
import 'package:magic_hat/presentation/home_page/dtos/character_dto.dart';
import 'package:magic_hat/presentation/home_page/widgets/image_widget.dart';
import 'package:magic_hat/presentation/list_page/widgets/custom_back_button.dart';
import 'package:magic_hat/presentation/list_page/widgets/denied_banner.dart';
import 'package:magic_hat/presentation/widgets/custom_app_bar.dart';

class CharacterViewScreen extends StatelessWidget {
  const CharacterViewScreen({required this.dto, super.key});
  final CharacterDto dto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: dto.fullName,
        leading: CustomBackButton(
          onTap: () {
            Navigator.of(context).maybePop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 45),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageWidget(url: dto.imageUrl),
                const SizedBox(width: 20),
                Expanded(
                  child: _InfoColumn(
                    dto: dto,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _InfoColumn extends StatelessWidget {
  const _InfoColumn({required this.dto});
  final CharacterDto dto;

  @override
  Widget build(BuildContext context) {
    if (dto.hasGuessed) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _InfoItem(
            title: 'House',
            value: dto.houseName,
          ),
          const SizedBox(height: 10),
          _InfoItem(
            title: 'Date of birh',
            value: dto.birthDate,
          ),
          const SizedBox(height: 10),
          _InfoItem(
            title: 'Actor',
            value: dto.actorName,
          ),
          const SizedBox(height: 10),
          _InfoItem(
            title: 'Species',
            value: dto.species,
          ),
        ],
      );
    } else {
      return const DeniedBanner();
    }
  }
}

class _InfoItem extends StatelessWidget {
  const _InfoItem({required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        '$title: $value',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
