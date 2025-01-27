// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reset,
    required TResult Function() refreshCharacter,
    required TResult Function(HouseDto house) chooseHouse,
    required TResult Function(String query) searchByName,
    required TResult Function(CharacterDto character) selectCharacter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? reset,
    TResult? Function()? refreshCharacter,
    TResult? Function(HouseDto house)? chooseHouse,
    TResult? Function(String query)? searchByName,
    TResult? Function(CharacterDto character)? selectCharacter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reset,
    TResult Function()? refreshCharacter,
    TResult Function(HouseDto house)? chooseHouse,
    TResult Function(String query)? searchByName,
    TResult Function(CharacterDto character)? selectCharacter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitEvent value) init,
    required TResult Function(_HomeResetEvent value) reset,
    required TResult Function(_HomeRefreshCharEvent value) refreshCharacter,
    required TResult Function(_HomeChooseHouseEvent value) chooseHouse,
    required TResult Function(_HomeSearchByNameEvent value) searchByName,
    required TResult Function(_HomeSelectCharacterEvent value) selectCharacter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitEvent value)? init,
    TResult? Function(_HomeResetEvent value)? reset,
    TResult? Function(_HomeRefreshCharEvent value)? refreshCharacter,
    TResult? Function(_HomeChooseHouseEvent value)? chooseHouse,
    TResult? Function(_HomeSearchByNameEvent value)? searchByName,
    TResult? Function(_HomeSelectCharacterEvent value)? selectCharacter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitEvent value)? init,
    TResult Function(_HomeResetEvent value)? reset,
    TResult Function(_HomeRefreshCharEvent value)? refreshCharacter,
    TResult Function(_HomeChooseHouseEvent value)? chooseHouse,
    TResult Function(_HomeSearchByNameEvent value)? searchByName,
    TResult Function(_HomeSelectCharacterEvent value)? selectCharacter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeInitEventImplCopyWith<$Res> {
  factory _$$HomeInitEventImplCopyWith(
          _$HomeInitEventImpl value, $Res Function(_$HomeInitEventImpl) then) =
      __$$HomeInitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeInitEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeInitEventImpl>
    implements _$$HomeInitEventImplCopyWith<$Res> {
  __$$HomeInitEventImplCopyWithImpl(
      _$HomeInitEventImpl _value, $Res Function(_$HomeInitEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeInitEventImpl implements _HomeInitEvent {
  const _$HomeInitEventImpl();

  @override
  String toString() {
    return 'HomeEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeInitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reset,
    required TResult Function() refreshCharacter,
    required TResult Function(HouseDto house) chooseHouse,
    required TResult Function(String query) searchByName,
    required TResult Function(CharacterDto character) selectCharacter,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? reset,
    TResult? Function()? refreshCharacter,
    TResult? Function(HouseDto house)? chooseHouse,
    TResult? Function(String query)? searchByName,
    TResult? Function(CharacterDto character)? selectCharacter,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reset,
    TResult Function()? refreshCharacter,
    TResult Function(HouseDto house)? chooseHouse,
    TResult Function(String query)? searchByName,
    TResult Function(CharacterDto character)? selectCharacter,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitEvent value) init,
    required TResult Function(_HomeResetEvent value) reset,
    required TResult Function(_HomeRefreshCharEvent value) refreshCharacter,
    required TResult Function(_HomeChooseHouseEvent value) chooseHouse,
    required TResult Function(_HomeSearchByNameEvent value) searchByName,
    required TResult Function(_HomeSelectCharacterEvent value) selectCharacter,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitEvent value)? init,
    TResult? Function(_HomeResetEvent value)? reset,
    TResult? Function(_HomeRefreshCharEvent value)? refreshCharacter,
    TResult? Function(_HomeChooseHouseEvent value)? chooseHouse,
    TResult? Function(_HomeSearchByNameEvent value)? searchByName,
    TResult? Function(_HomeSelectCharacterEvent value)? selectCharacter,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitEvent value)? init,
    TResult Function(_HomeResetEvent value)? reset,
    TResult Function(_HomeRefreshCharEvent value)? refreshCharacter,
    TResult Function(_HomeChooseHouseEvent value)? chooseHouse,
    TResult Function(_HomeSearchByNameEvent value)? searchByName,
    TResult Function(_HomeSelectCharacterEvent value)? selectCharacter,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _HomeInitEvent implements HomeEvent {
  const factory _HomeInitEvent() = _$HomeInitEventImpl;
}

/// @nodoc
abstract class _$$HomeResetEventImplCopyWith<$Res> {
  factory _$$HomeResetEventImplCopyWith(_$HomeResetEventImpl value,
          $Res Function(_$HomeResetEventImpl) then) =
      __$$HomeResetEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeResetEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeResetEventImpl>
    implements _$$HomeResetEventImplCopyWith<$Res> {
  __$$HomeResetEventImplCopyWithImpl(
      _$HomeResetEventImpl _value, $Res Function(_$HomeResetEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeResetEventImpl implements _HomeResetEvent {
  const _$HomeResetEventImpl();

  @override
  String toString() {
    return 'HomeEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeResetEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reset,
    required TResult Function() refreshCharacter,
    required TResult Function(HouseDto house) chooseHouse,
    required TResult Function(String query) searchByName,
    required TResult Function(CharacterDto character) selectCharacter,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? reset,
    TResult? Function()? refreshCharacter,
    TResult? Function(HouseDto house)? chooseHouse,
    TResult? Function(String query)? searchByName,
    TResult? Function(CharacterDto character)? selectCharacter,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reset,
    TResult Function()? refreshCharacter,
    TResult Function(HouseDto house)? chooseHouse,
    TResult Function(String query)? searchByName,
    TResult Function(CharacterDto character)? selectCharacter,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitEvent value) init,
    required TResult Function(_HomeResetEvent value) reset,
    required TResult Function(_HomeRefreshCharEvent value) refreshCharacter,
    required TResult Function(_HomeChooseHouseEvent value) chooseHouse,
    required TResult Function(_HomeSearchByNameEvent value) searchByName,
    required TResult Function(_HomeSelectCharacterEvent value) selectCharacter,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitEvent value)? init,
    TResult? Function(_HomeResetEvent value)? reset,
    TResult? Function(_HomeRefreshCharEvent value)? refreshCharacter,
    TResult? Function(_HomeChooseHouseEvent value)? chooseHouse,
    TResult? Function(_HomeSearchByNameEvent value)? searchByName,
    TResult? Function(_HomeSelectCharacterEvent value)? selectCharacter,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitEvent value)? init,
    TResult Function(_HomeResetEvent value)? reset,
    TResult Function(_HomeRefreshCharEvent value)? refreshCharacter,
    TResult Function(_HomeChooseHouseEvent value)? chooseHouse,
    TResult Function(_HomeSearchByNameEvent value)? searchByName,
    TResult Function(_HomeSelectCharacterEvent value)? selectCharacter,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _HomeResetEvent implements HomeEvent {
  const factory _HomeResetEvent() = _$HomeResetEventImpl;
}

/// @nodoc
abstract class _$$HomeRefreshCharEventImplCopyWith<$Res> {
  factory _$$HomeRefreshCharEventImplCopyWith(_$HomeRefreshCharEventImpl value,
          $Res Function(_$HomeRefreshCharEventImpl) then) =
      __$$HomeRefreshCharEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeRefreshCharEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeRefreshCharEventImpl>
    implements _$$HomeRefreshCharEventImplCopyWith<$Res> {
  __$$HomeRefreshCharEventImplCopyWithImpl(_$HomeRefreshCharEventImpl _value,
      $Res Function(_$HomeRefreshCharEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeRefreshCharEventImpl implements _HomeRefreshCharEvent {
  const _$HomeRefreshCharEventImpl();

  @override
  String toString() {
    return 'HomeEvent.refreshCharacter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeRefreshCharEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reset,
    required TResult Function() refreshCharacter,
    required TResult Function(HouseDto house) chooseHouse,
    required TResult Function(String query) searchByName,
    required TResult Function(CharacterDto character) selectCharacter,
  }) {
    return refreshCharacter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? reset,
    TResult? Function()? refreshCharacter,
    TResult? Function(HouseDto house)? chooseHouse,
    TResult? Function(String query)? searchByName,
    TResult? Function(CharacterDto character)? selectCharacter,
  }) {
    return refreshCharacter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reset,
    TResult Function()? refreshCharacter,
    TResult Function(HouseDto house)? chooseHouse,
    TResult Function(String query)? searchByName,
    TResult Function(CharacterDto character)? selectCharacter,
    required TResult orElse(),
  }) {
    if (refreshCharacter != null) {
      return refreshCharacter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitEvent value) init,
    required TResult Function(_HomeResetEvent value) reset,
    required TResult Function(_HomeRefreshCharEvent value) refreshCharacter,
    required TResult Function(_HomeChooseHouseEvent value) chooseHouse,
    required TResult Function(_HomeSearchByNameEvent value) searchByName,
    required TResult Function(_HomeSelectCharacterEvent value) selectCharacter,
  }) {
    return refreshCharacter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitEvent value)? init,
    TResult? Function(_HomeResetEvent value)? reset,
    TResult? Function(_HomeRefreshCharEvent value)? refreshCharacter,
    TResult? Function(_HomeChooseHouseEvent value)? chooseHouse,
    TResult? Function(_HomeSearchByNameEvent value)? searchByName,
    TResult? Function(_HomeSelectCharacterEvent value)? selectCharacter,
  }) {
    return refreshCharacter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitEvent value)? init,
    TResult Function(_HomeResetEvent value)? reset,
    TResult Function(_HomeRefreshCharEvent value)? refreshCharacter,
    TResult Function(_HomeChooseHouseEvent value)? chooseHouse,
    TResult Function(_HomeSearchByNameEvent value)? searchByName,
    TResult Function(_HomeSelectCharacterEvent value)? selectCharacter,
    required TResult orElse(),
  }) {
    if (refreshCharacter != null) {
      return refreshCharacter(this);
    }
    return orElse();
  }
}

abstract class _HomeRefreshCharEvent implements HomeEvent {
  const factory _HomeRefreshCharEvent() = _$HomeRefreshCharEventImpl;
}

/// @nodoc
abstract class _$$HomeChooseHouseEventImplCopyWith<$Res> {
  factory _$$HomeChooseHouseEventImplCopyWith(_$HomeChooseHouseEventImpl value,
          $Res Function(_$HomeChooseHouseEventImpl) then) =
      __$$HomeChooseHouseEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HouseDto house});
}

/// @nodoc
class __$$HomeChooseHouseEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeChooseHouseEventImpl>
    implements _$$HomeChooseHouseEventImplCopyWith<$Res> {
  __$$HomeChooseHouseEventImplCopyWithImpl(_$HomeChooseHouseEventImpl _value,
      $Res Function(_$HomeChooseHouseEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? house = null,
  }) {
    return _then(_$HomeChooseHouseEventImpl(
      null == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as HouseDto,
    ));
  }
}

/// @nodoc

class _$HomeChooseHouseEventImpl implements _HomeChooseHouseEvent {
  const _$HomeChooseHouseEventImpl(this.house);

  @override
  final HouseDto house;

  @override
  String toString() {
    return 'HomeEvent.chooseHouse(house: $house)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeChooseHouseEventImpl &&
            (identical(other.house, house) || other.house == house));
  }

  @override
  int get hashCode => Object.hash(runtimeType, house);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeChooseHouseEventImplCopyWith<_$HomeChooseHouseEventImpl>
      get copyWith =>
          __$$HomeChooseHouseEventImplCopyWithImpl<_$HomeChooseHouseEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reset,
    required TResult Function() refreshCharacter,
    required TResult Function(HouseDto house) chooseHouse,
    required TResult Function(String query) searchByName,
    required TResult Function(CharacterDto character) selectCharacter,
  }) {
    return chooseHouse(house);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? reset,
    TResult? Function()? refreshCharacter,
    TResult? Function(HouseDto house)? chooseHouse,
    TResult? Function(String query)? searchByName,
    TResult? Function(CharacterDto character)? selectCharacter,
  }) {
    return chooseHouse?.call(house);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reset,
    TResult Function()? refreshCharacter,
    TResult Function(HouseDto house)? chooseHouse,
    TResult Function(String query)? searchByName,
    TResult Function(CharacterDto character)? selectCharacter,
    required TResult orElse(),
  }) {
    if (chooseHouse != null) {
      return chooseHouse(house);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitEvent value) init,
    required TResult Function(_HomeResetEvent value) reset,
    required TResult Function(_HomeRefreshCharEvent value) refreshCharacter,
    required TResult Function(_HomeChooseHouseEvent value) chooseHouse,
    required TResult Function(_HomeSearchByNameEvent value) searchByName,
    required TResult Function(_HomeSelectCharacterEvent value) selectCharacter,
  }) {
    return chooseHouse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitEvent value)? init,
    TResult? Function(_HomeResetEvent value)? reset,
    TResult? Function(_HomeRefreshCharEvent value)? refreshCharacter,
    TResult? Function(_HomeChooseHouseEvent value)? chooseHouse,
    TResult? Function(_HomeSearchByNameEvent value)? searchByName,
    TResult? Function(_HomeSelectCharacterEvent value)? selectCharacter,
  }) {
    return chooseHouse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitEvent value)? init,
    TResult Function(_HomeResetEvent value)? reset,
    TResult Function(_HomeRefreshCharEvent value)? refreshCharacter,
    TResult Function(_HomeChooseHouseEvent value)? chooseHouse,
    TResult Function(_HomeSearchByNameEvent value)? searchByName,
    TResult Function(_HomeSelectCharacterEvent value)? selectCharacter,
    required TResult orElse(),
  }) {
    if (chooseHouse != null) {
      return chooseHouse(this);
    }
    return orElse();
  }
}

abstract class _HomeChooseHouseEvent implements HomeEvent {
  const factory _HomeChooseHouseEvent(final HouseDto house) =
      _$HomeChooseHouseEventImpl;

  HouseDto get house;
  @JsonKey(ignore: true)
  _$$HomeChooseHouseEventImplCopyWith<_$HomeChooseHouseEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeSearchByNameEventImplCopyWith<$Res> {
  factory _$$HomeSearchByNameEventImplCopyWith(
          _$HomeSearchByNameEventImpl value,
          $Res Function(_$HomeSearchByNameEventImpl) then) =
      __$$HomeSearchByNameEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$HomeSearchByNameEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeSearchByNameEventImpl>
    implements _$$HomeSearchByNameEventImplCopyWith<$Res> {
  __$$HomeSearchByNameEventImplCopyWithImpl(_$HomeSearchByNameEventImpl _value,
      $Res Function(_$HomeSearchByNameEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$HomeSearchByNameEventImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeSearchByNameEventImpl implements _HomeSearchByNameEvent {
  const _$HomeSearchByNameEventImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'HomeEvent.searchByName(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSearchByNameEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSearchByNameEventImplCopyWith<_$HomeSearchByNameEventImpl>
      get copyWith => __$$HomeSearchByNameEventImplCopyWithImpl<
          _$HomeSearchByNameEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reset,
    required TResult Function() refreshCharacter,
    required TResult Function(HouseDto house) chooseHouse,
    required TResult Function(String query) searchByName,
    required TResult Function(CharacterDto character) selectCharacter,
  }) {
    return searchByName(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? reset,
    TResult? Function()? refreshCharacter,
    TResult? Function(HouseDto house)? chooseHouse,
    TResult? Function(String query)? searchByName,
    TResult? Function(CharacterDto character)? selectCharacter,
  }) {
    return searchByName?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reset,
    TResult Function()? refreshCharacter,
    TResult Function(HouseDto house)? chooseHouse,
    TResult Function(String query)? searchByName,
    TResult Function(CharacterDto character)? selectCharacter,
    required TResult orElse(),
  }) {
    if (searchByName != null) {
      return searchByName(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitEvent value) init,
    required TResult Function(_HomeResetEvent value) reset,
    required TResult Function(_HomeRefreshCharEvent value) refreshCharacter,
    required TResult Function(_HomeChooseHouseEvent value) chooseHouse,
    required TResult Function(_HomeSearchByNameEvent value) searchByName,
    required TResult Function(_HomeSelectCharacterEvent value) selectCharacter,
  }) {
    return searchByName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitEvent value)? init,
    TResult? Function(_HomeResetEvent value)? reset,
    TResult? Function(_HomeRefreshCharEvent value)? refreshCharacter,
    TResult? Function(_HomeChooseHouseEvent value)? chooseHouse,
    TResult? Function(_HomeSearchByNameEvent value)? searchByName,
    TResult? Function(_HomeSelectCharacterEvent value)? selectCharacter,
  }) {
    return searchByName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitEvent value)? init,
    TResult Function(_HomeResetEvent value)? reset,
    TResult Function(_HomeRefreshCharEvent value)? refreshCharacter,
    TResult Function(_HomeChooseHouseEvent value)? chooseHouse,
    TResult Function(_HomeSearchByNameEvent value)? searchByName,
    TResult Function(_HomeSelectCharacterEvent value)? selectCharacter,
    required TResult orElse(),
  }) {
    if (searchByName != null) {
      return searchByName(this);
    }
    return orElse();
  }
}

abstract class _HomeSearchByNameEvent implements HomeEvent {
  const factory _HomeSearchByNameEvent(final String query) =
      _$HomeSearchByNameEventImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$HomeSearchByNameEventImplCopyWith<_$HomeSearchByNameEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeSelectCharacterEventImplCopyWith<$Res> {
  factory _$$HomeSelectCharacterEventImplCopyWith(
          _$HomeSelectCharacterEventImpl value,
          $Res Function(_$HomeSelectCharacterEventImpl) then) =
      __$$HomeSelectCharacterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CharacterDto character});
}

/// @nodoc
class __$$HomeSelectCharacterEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeSelectCharacterEventImpl>
    implements _$$HomeSelectCharacterEventImplCopyWith<$Res> {
  __$$HomeSelectCharacterEventImplCopyWithImpl(
      _$HomeSelectCharacterEventImpl _value,
      $Res Function(_$HomeSelectCharacterEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
  }) {
    return _then(_$HomeSelectCharacterEventImpl(
      null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as CharacterDto,
    ));
  }
}

/// @nodoc

class _$HomeSelectCharacterEventImpl implements _HomeSelectCharacterEvent {
  const _$HomeSelectCharacterEventImpl(this.character);

  @override
  final CharacterDto character;

  @override
  String toString() {
    return 'HomeEvent.selectCharacter(character: $character)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSelectCharacterEventImpl &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSelectCharacterEventImplCopyWith<_$HomeSelectCharacterEventImpl>
      get copyWith => __$$HomeSelectCharacterEventImplCopyWithImpl<
          _$HomeSelectCharacterEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reset,
    required TResult Function() refreshCharacter,
    required TResult Function(HouseDto house) chooseHouse,
    required TResult Function(String query) searchByName,
    required TResult Function(CharacterDto character) selectCharacter,
  }) {
    return selectCharacter(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? reset,
    TResult? Function()? refreshCharacter,
    TResult? Function(HouseDto house)? chooseHouse,
    TResult? Function(String query)? searchByName,
    TResult? Function(CharacterDto character)? selectCharacter,
  }) {
    return selectCharacter?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reset,
    TResult Function()? refreshCharacter,
    TResult Function(HouseDto house)? chooseHouse,
    TResult Function(String query)? searchByName,
    TResult Function(CharacterDto character)? selectCharacter,
    required TResult orElse(),
  }) {
    if (selectCharacter != null) {
      return selectCharacter(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitEvent value) init,
    required TResult Function(_HomeResetEvent value) reset,
    required TResult Function(_HomeRefreshCharEvent value) refreshCharacter,
    required TResult Function(_HomeChooseHouseEvent value) chooseHouse,
    required TResult Function(_HomeSearchByNameEvent value) searchByName,
    required TResult Function(_HomeSelectCharacterEvent value) selectCharacter,
  }) {
    return selectCharacter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitEvent value)? init,
    TResult? Function(_HomeResetEvent value)? reset,
    TResult? Function(_HomeRefreshCharEvent value)? refreshCharacter,
    TResult? Function(_HomeChooseHouseEvent value)? chooseHouse,
    TResult? Function(_HomeSearchByNameEvent value)? searchByName,
    TResult? Function(_HomeSelectCharacterEvent value)? selectCharacter,
  }) {
    return selectCharacter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitEvent value)? init,
    TResult Function(_HomeResetEvent value)? reset,
    TResult Function(_HomeRefreshCharEvent value)? refreshCharacter,
    TResult Function(_HomeChooseHouseEvent value)? chooseHouse,
    TResult Function(_HomeSearchByNameEvent value)? searchByName,
    TResult Function(_HomeSelectCharacterEvent value)? selectCharacter,
    required TResult orElse(),
  }) {
    if (selectCharacter != null) {
      return selectCharacter(this);
    }
    return orElse();
  }
}

abstract class _HomeSelectCharacterEvent implements HomeEvent {
  const factory _HomeSelectCharacterEvent(final CharacterDto character) =
      _$HomeSelectCharacterEventImpl;

  CharacterDto get character;
  @JsonKey(ignore: true)
  _$$HomeSelectCharacterEventImplCopyWith<_$HomeSelectCharacterEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<CharacterDto> allCharacters,
            List<CharacterDto> filteredCharacters,
            CharacterDto current,
            int currentIndex,
            int total,
            int success,
            int failed,
            String searchString)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<CharacterDto> allCharacters,
            List<CharacterDto> filteredCharacters,
            CharacterDto current,
            int currentIndex,
            int total,
            int success,
            int failed,
            String searchString)?
        loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<CharacterDto> allCharacters,
            List<CharacterDto> filteredCharacters,
            CharacterDto current,
            int currentIndex,
            int total,
            int success,
            int failed,
            String searchString)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
    required TResult Function(_HomeErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeLoadedState value)? loaded,
    TResult? Function(_HomeErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeLoadingStateImplCopyWith<$Res> {
  factory _$$HomeLoadingStateImplCopyWith(_$HomeLoadingStateImpl value,
          $Res Function(_$HomeLoadingStateImpl) then) =
      __$$HomeLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadingStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadingStateImpl>
    implements _$$HomeLoadingStateImplCopyWith<$Res> {
  __$$HomeLoadingStateImplCopyWithImpl(_$HomeLoadingStateImpl _value,
      $Res Function(_$HomeLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeLoadingStateImpl implements _HomeLoadingState {
  const _$HomeLoadingStateImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<CharacterDto> allCharacters,
            List<CharacterDto> filteredCharacters,
            CharacterDto current,
            int currentIndex,
            int total,
            int success,
            int failed,
            String searchString)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<CharacterDto> allCharacters,
            List<CharacterDto> filteredCharacters,
            CharacterDto current,
            int currentIndex,
            int total,
            int success,
            int failed,
            String searchString)?
        loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<CharacterDto> allCharacters,
            List<CharacterDto> filteredCharacters,
            CharacterDto current,
            int currentIndex,
            int total,
            int success,
            int failed,
            String searchString)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
    required TResult Function(_HomeErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeLoadedState value)? loaded,
    TResult? Function(_HomeErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadingState implements HomeState {
  const factory _HomeLoadingState() = _$HomeLoadingStateImpl;
}

/// @nodoc
abstract class _$$HomeLoadedStateImplCopyWith<$Res> {
  factory _$$HomeLoadedStateImplCopyWith(_$HomeLoadedStateImpl value,
          $Res Function(_$HomeLoadedStateImpl) then) =
      __$$HomeLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<CharacterDto> allCharacters,
      List<CharacterDto> filteredCharacters,
      CharacterDto current,
      int currentIndex,
      int total,
      int success,
      int failed,
      String searchString});
}

/// @nodoc
class __$$HomeLoadedStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadedStateImpl>
    implements _$$HomeLoadedStateImplCopyWith<$Res> {
  __$$HomeLoadedStateImplCopyWithImpl(
      _$HomeLoadedStateImpl _value, $Res Function(_$HomeLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCharacters = null,
    Object? filteredCharacters = null,
    Object? current = null,
    Object? currentIndex = null,
    Object? total = null,
    Object? success = null,
    Object? failed = null,
    Object? searchString = null,
  }) {
    return _then(_$HomeLoadedStateImpl(
      allCharacters: null == allCharacters
          ? _value._allCharacters
          : allCharacters // ignore: cast_nullable_to_non_nullable
              as List<CharacterDto>,
      filteredCharacters: null == filteredCharacters
          ? _value._filteredCharacters
          : filteredCharacters // ignore: cast_nullable_to_non_nullable
              as List<CharacterDto>,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CharacterDto,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as int,
      searchString: null == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeLoadedStateImpl implements _HomeLoadedState {
  const _$HomeLoadedStateImpl(
      {required final List<CharacterDto> allCharacters,
      required final List<CharacterDto> filteredCharacters,
      required this.current,
      required this.currentIndex,
      required this.total,
      required this.success,
      required this.failed,
      required this.searchString})
      : _allCharacters = allCharacters,
        _filteredCharacters = filteredCharacters;

  final List<CharacterDto> _allCharacters;
  @override
  List<CharacterDto> get allCharacters {
    if (_allCharacters is EqualUnmodifiableListView) return _allCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allCharacters);
  }

  final List<CharacterDto> _filteredCharacters;
  @override
  List<CharacterDto> get filteredCharacters {
    if (_filteredCharacters is EqualUnmodifiableListView)
      return _filteredCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredCharacters);
  }

  @override
  final CharacterDto current;
  @override
  final int currentIndex;
  @override
  final int total;
  @override
  final int success;
  @override
  final int failed;
  @override
  final String searchString;

  @override
  String toString() {
    return 'HomeState.loaded(allCharacters: $allCharacters, filteredCharacters: $filteredCharacters, current: $current, currentIndex: $currentIndex, total: $total, success: $success, failed: $failed, searchString: $searchString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._allCharacters, _allCharacters) &&
            const DeepCollectionEquality()
                .equals(other._filteredCharacters, _filteredCharacters) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allCharacters),
      const DeepCollectionEquality().hash(_filteredCharacters),
      current,
      currentIndex,
      total,
      success,
      failed,
      searchString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeLoadedStateImplCopyWith<_$HomeLoadedStateImpl> get copyWith =>
      __$$HomeLoadedStateImplCopyWithImpl<_$HomeLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<CharacterDto> allCharacters,
            List<CharacterDto> filteredCharacters,
            CharacterDto current,
            int currentIndex,
            int total,
            int success,
            int failed,
            String searchString)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(allCharacters, filteredCharacters, current, currentIndex,
        total, success, failed, searchString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<CharacterDto> allCharacters,
            List<CharacterDto> filteredCharacters,
            CharacterDto current,
            int currentIndex,
            int total,
            int success,
            int failed,
            String searchString)?
        loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(allCharacters, filteredCharacters, current,
        currentIndex, total, success, failed, searchString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<CharacterDto> allCharacters,
            List<CharacterDto> filteredCharacters,
            CharacterDto current,
            int currentIndex,
            int total,
            int success,
            int failed,
            String searchString)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(allCharacters, filteredCharacters, current, currentIndex,
          total, success, failed, searchString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
    required TResult Function(_HomeErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeLoadedState value)? loaded,
    TResult? Function(_HomeErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadedState implements HomeState {
  const factory _HomeLoadedState(
      {required final List<CharacterDto> allCharacters,
      required final List<CharacterDto> filteredCharacters,
      required final CharacterDto current,
      required final int currentIndex,
      required final int total,
      required final int success,
      required final int failed,
      required final String searchString}) = _$HomeLoadedStateImpl;

  List<CharacterDto> get allCharacters;
  List<CharacterDto> get filteredCharacters;
  CharacterDto get current;
  int get currentIndex;
  int get total;
  int get success;
  int get failed;
  String get searchString;
  @JsonKey(ignore: true)
  _$$HomeLoadedStateImplCopyWith<_$HomeLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeErrorStateImplCopyWith<$Res> {
  factory _$$HomeErrorStateImplCopyWith(_$HomeErrorStateImpl value,
          $Res Function(_$HomeErrorStateImpl) then) =
      __$$HomeErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeErrorStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeErrorStateImpl>
    implements _$$HomeErrorStateImplCopyWith<$Res> {
  __$$HomeErrorStateImplCopyWithImpl(
      _$HomeErrorStateImpl _value, $Res Function(_$HomeErrorStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeErrorStateImpl implements _HomeErrorState {
  const _$HomeErrorStateImpl();

  @override
  String toString() {
    return 'HomeState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<CharacterDto> allCharacters,
            List<CharacterDto> filteredCharacters,
            CharacterDto current,
            int currentIndex,
            int total,
            int success,
            int failed,
            String searchString)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<CharacterDto> allCharacters,
            List<CharacterDto> filteredCharacters,
            CharacterDto current,
            int currentIndex,
            int total,
            int success,
            int failed,
            String searchString)?
        loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<CharacterDto> allCharacters,
            List<CharacterDto> filteredCharacters,
            CharacterDto current,
            int currentIndex,
            int total,
            int success,
            int failed,
            String searchString)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
    required TResult Function(_HomeErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeLoadedState value)? loaded,
    TResult? Function(_HomeErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _HomeErrorState implements HomeState {
  const factory _HomeErrorState() = _$HomeErrorStateImpl;
}
