import 'package:flutter/material.dart';
import 'package:magic_hat/core/di.dart';
import 'package:magic_hat/data/characters/repositories/characters_repository.dart';
import 'package:test/test.dart';

void main() {
  late final CharactersRepository charactersRepository;

  setUpAll(() async {
    await initGetIt();
    charactersRepository = getIt<CharactersRepository>();
  });

  test(
    'Unit test get all characters',
    () async {
      final res = await charactersRepository.getAllCharacters();
      debugPrint(res.toString());
    },
  );
}
