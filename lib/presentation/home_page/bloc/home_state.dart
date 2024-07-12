part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _HomeLoadingState;
  const factory HomeState.loaded({
    required List<CharacterDto> allCharacters,
    required List<CharacterDto> filteredCharacters,
    required CharacterDto current,
    required int currentIndex,
    required int total,
    required int success,
    required int failed,
    required String searchString,
  }) = _HomeLoadedState;
  const factory HomeState.error() = _HomeErrorState;
}
