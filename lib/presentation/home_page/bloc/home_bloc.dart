import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_hat/core/managers/random_manager.dart';
import 'package:magic_hat/data/characters/repositories/characters_repository.dart';
import 'package:magic_hat/presentation/home_page/dto/character_dto.dart';
import 'package:magic_hat/presentation/home_page/dto/house_dto.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required CharactersRepository charactersRepository})
      : _charactersRepository = charactersRepository,
        super(const HomeState.loading()) {
    on<_HomeInitEvent>(_init);
    on<_HomeChooseHouseEvent>(_chooseHouse);
    on<_HomeRefreshCharEvent>(_refreshCharacter);
    on<_HomeResetEvent>(_reset);
  }

  final CharactersRepository _charactersRepository;
  final RandomManager _randomManager = RandomManager();

  FutureOr<void> _init(
    _HomeInitEvent event,
    Emitter<HomeState> emit,
  ) async {
    try {
      emit(const HomeState.loading());
      final models = await _charactersRepository.getAllCharacters();
      final dtos = models
          .map(
            (e) => CharacterDto(
              e.house ?? '',
              fullName: e.name ?? '',
              imageUrl: e.image ?? '',
            ),
          )
          .where((e) => e.houseName.isEmpty)
          .toList();
      final randInt = _randomManager.getNextInt(dtos.length);
      emit(
        HomeState.loaded(
          allCharacters: dtos,
          current: dtos[randInt],
          total: 0,
          success: 0,
          failed: 0,
        ),
      );
    } catch (_) {
      emit(const HomeState.error());
    }
  }

  FutureOr<void> _chooseHouse(
    _HomeChooseHouseEvent event,
    Emitter<HomeState> emit,
  ) async {
    state.mapOrNull(
      loaded: (loaded) {
        final total = loaded.total + 1;
        final randInt = _randomManager.getNextInt(loaded.allCharacters.length);

        late final int successful;
        late final int failed;
        if (loaded.current.houseName == event.house.houseName) {
          successful = loaded.success + 1;
          failed = loaded.failed;
        } else {
          successful = loaded.success;
          failed = loaded.failed + 1;
        }
        emit(
          loaded.copyWith(
            current: loaded.allCharacters[randInt],
            failed: failed,
            success: successful,
            total: total,
          ),
        );
      },
    );
  }

  FutureOr<void> _reset(
    _HomeResetEvent event,
    Emitter<HomeState> emit,
  ) async {
    state.mapOrNull(
      loaded: (loaded) {
        final randInt = _randomManager.getNextInt(loaded.allCharacters.length);

        emit(
          loaded.copyWith(
            current: loaded.allCharacters[randInt],
            failed: 0,
            success: 0,
            total: 0,
          ),
        );
      },
    );
  }

  FutureOr<void> _refreshCharacter(
    _HomeRefreshCharEvent event,
    Emitter<HomeState> emit,
  ) async {
    state.mapOrNull(
      loaded: (loaded) {
        final randInt = _randomManager.getNextInt(loaded.allCharacters.length);

        emit(
          loaded.copyWith(
            current: loaded.allCharacters[randInt],
            failed: loaded.failed,
            success: loaded.success,
            total: loaded.total,
          ),
        );
      },
    );
  }
}
