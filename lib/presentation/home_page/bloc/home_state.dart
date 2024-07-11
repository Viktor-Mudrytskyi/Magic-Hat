part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _HomeLoadingState;
  const factory HomeState.loaded({
    required List<CharacterDto> allCharacters,
    required CharacterDto current,
    required int total,
    required int success,
    required int failed,
  }) = _HomeLoadedState;
  const factory HomeState.error() = _HomeErrorState;
}
