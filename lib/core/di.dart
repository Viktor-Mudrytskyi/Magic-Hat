import 'package:get_it/get_it.dart';
import 'package:magic_hat/core/api/api_service.dart';
import 'package:magic_hat/core/api/characters_api.dart';
import 'package:magic_hat/core/app_constants.dart';
import 'package:magic_hat/data/characters/repositories/characters_repository.dart';
import 'package:magic_hat/data/characters/repositories/characters_repository_impl.dart';

final getIt = GetIt.instance;

/// Init dependency injector
Future<void> initGetIt() async {
  getIt.registerLazySingleton(() => ApiService(AppConstants.baseUrl));
  getIt.registerFactory(() => CharactersApi(apiService: getIt()));
  getIt.registerFactory<CharactersRepository>(
      () => CharactersRepositoryImpl(charactersApi: getIt()));
}
