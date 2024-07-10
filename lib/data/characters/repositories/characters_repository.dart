import 'package:dio/dio.dart';
import 'package:magic_hat/data/characters/models/character_model.dart';

abstract interface class CharactersRepository {
  /// Throws [DioException] on api error
  Future<List<CharacterModel>> getAllCharacters();
}
