import 'package:flutter/material.dart';
import 'package:magic_hat/presentation/home_page/dtos/character_dto.dart';
import 'package:magic_hat/presentation/list_page/widgets/character_card.dart';

class CharactersSliverList extends StatelessWidget {
  const CharactersSliverList({
    required this.characters,
    required this.onCardTap,
    required this.onRetryTap,
    super.key,
  });
  final List<CharacterDto> characters;
  final void Function(CharacterDto dto) onCardTap;
  final void Function(CharacterDto dto) onRetryTap;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) {
        final current = characters[index];
        return CharacterCard(
          dto: current,
          onTap: () {
            onCardTap(current);
          },
          onPressRetry: () {
            onRetryTap(current);
          },
        );
      },
      itemCount: characters.length,
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}
