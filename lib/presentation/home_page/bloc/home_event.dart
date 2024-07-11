part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init() = _HomeInitEvent;
  const factory HomeEvent.reset() = _HomeResetEvent;
  const factory HomeEvent.refreshCharacter() = _HomeRefreshCharEvent;
  const factory HomeEvent.chooseHouse(HouseDto house) = _HomeChooseHouseEvent;
}
