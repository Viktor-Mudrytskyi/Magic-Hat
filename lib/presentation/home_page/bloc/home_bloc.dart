import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_hat/core/managers/random_manager.dart';
import 'package:magic_hat/data/characters/models/character_model.dart';
import 'package:magic_hat/data/characters/repositories/characters_repository.dart';
import 'package:magic_hat/presentation/home_page/dtos/character_dto.dart';
import 'package:magic_hat/presentation/home_page/dtos/house_dto.dart';

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
    on<_HomeSearchByNameEvent>(_searchByName);
    on<_HomeSelectCharacterEvent>(_selectCharacter);
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
      final dtos = models.map(_serialize).toList();
      final randInt = _randomManager.getNextInt(dtos.length);
      emit(
        HomeState.loaded(
          allCharacters: dtos,
          current: dtos[randInt],
          total: 0,
          success: 0,
          failed: 0,
          currentIndex: randInt,
          filteredCharacters: [],
          searchString: '',
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
        // This block calculates current options for counters and for the selcted dto

        late final int successful;
        late final int total;
        late final int failed;
        late final bool hasGuessed;
        late final int attemptCount;

        final bool isHouseCorrect =
            loaded.current.houseName == event.house.houseName;

        // if character has been guessed before, dont count anything as per requirement
        if (loaded.current.hasGuessed) {
          successful = loaded.success;
          failed = loaded.failed;
          total = loaded.total;
          attemptCount = loaded.current.attempts;
          hasGuessed = loaded.current.hasGuessed;
        } else {
          if (isHouseCorrect) {
            successful = loaded.success + 1;
            failed = loaded.failed;
            total = loaded.total + 1;
            hasGuessed = true;
            attemptCount = loaded.current.attempts + 1;
          } else {
            successful = loaded.success;
            failed = loaded.failed + 1;
            total = loaded.total + 1;
            hasGuessed = false;
            attemptCount = loaded.current.attempts + 1;
          }
        }

        // Updates the original list, updates the selected element
        final allCharactersCopy = loaded.allCharacters.toList();
        allCharactersCopy.removeAt(loaded.currentIndex);
        allCharactersCopy.insert(
          loaded.currentIndex,
          loaded.current.copyWith(
            attempts: attemptCount,
            hasGuessed: hasGuessed,
          ),
        );

        final randInt = _randomManager.getNextInt(loaded.allCharacters.length);

        emit(
          loaded.copyWith(
            allCharacters: allCharactersCopy,
            filteredCharacters: _filter(
              query: loaded.searchString,
              allCharacters: allCharactersCopy,
            ),
            currentIndex: randInt,
            current: allCharactersCopy[randInt],
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
    add(const HomeEvent.init());
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
            currentIndex: randInt,
            failed: loaded.failed,
            success: loaded.success,
            total: loaded.total,
          ),
        );
      },
    );
  }

  FutureOr<void> _searchByName(
    _HomeSearchByNameEvent event,
    Emitter<HomeState> emit,
  ) async {
    state.mapOrNull(
      loaded: (loaded) {
        emit(
          loaded.copyWith(
            searchString: event.query,
            filteredCharacters: _filter(
              query: event.query,
              allCharacters: loaded.allCharacters,
            ),
          ),
        );
      },
    );
  }

  FutureOr<void> _selectCharacter(
    _HomeSelectCharacterEvent event,
    Emitter<HomeState> emit,
  ) async {
    state.mapOrNull(
      loaded: (loaded) {
        int index = loaded.allCharacters.indexOf(event.character);
        if (index == -1) {
          index = _randomManager.getNextInt(loaded.allCharacters.length);
        }
        emit(
          loaded.copyWith(
            currentIndex: index,
            current: loaded.allCharacters[index],
          ),
        );
      },
    );
  }

  // Filters attemted characters by attemts and search string
  List<CharacterDto> _filter({
    required String query,
    required List<CharacterDto> allCharacters,
  }) {
    return allCharacters
        .where(
          (e) =>
              e.attempts > 0 &&
              e.fullName.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
  }

  CharacterDto _serialize(CharacterModel model) {
    return CharacterDto(
      houseName: model.house ?? '-',
      actorName: model.actor ?? '-',
      attempts: 0,
      birthDate: model.dateOfBirth ?? '-',
      hasGuessed: false,
      species: model.species ?? '-',
      fullName: model.name ?? '-',
      imageUrl: model.image ?? '',
    );
  }
}
