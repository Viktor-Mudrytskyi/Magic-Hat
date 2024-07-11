import 'package:flutter/material.dart';
import 'package:magic_hat/presentation/list_page/dtos/card_character_dto.dart';
import 'package:magic_hat/presentation/list_page/widgets/custom_back_button.dart';
import 'package:magic_hat/presentation/widgets/custom_app_bar.dart';

class CharacterViewScreen extends StatelessWidget {
  const CharacterViewScreen({super.key, required this.dto});
  final CardCharacterDto dto;

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
    );
  }
}
