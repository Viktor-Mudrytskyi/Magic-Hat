part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init() = _HomeInitEvent;
  const factory HomeEvent.reset() = _HomeResetEvent;
  const factory HomeEvent.refreshCharacter() = _HomeRefreshCharEvent;
  const factory HomeEvent.chooseHouse(HouseDto house) = _HomeChooseHouseEvent;
  const factory HomeEvent.searchByName(String query) = _HomeSearchByNameEvent;
  const factory HomeEvent.selectCharacter(CharacterDto character) =
      _HomeSelectCharacterEvent;
}
