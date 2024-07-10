import 'package:magic_hat/core/api/characters_api.dart';
import 'package:magic_hat/data/characters/models/character_model.dart';
import 'package:magic_hat/data/characters/repositories/characters_repository.dart';

class CharactersRepositoryImpl implements CharactersRepository {
  const CharactersRepositoryImpl({
    required CharactersApi charactersApi,
  }) : _charactersApi = charactersApi;

  final CharactersApi _charactersApi;

  @override
  Future<List<CharacterModel>> getAllCharacters() async {
    final res = await _charactersApi.getAllCharacters();
    return res.map(CharacterModel.fromJson).toList();
  }
}
