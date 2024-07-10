// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_bottom_bar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomBottomBarState {
  PagesEnum get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomBottomBarStateCopyWith<CustomBottomBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomBottomBarStateCopyWith<$Res> {
  factory $CustomBottomBarStateCopyWith(CustomBottomBarState value,
          $Res Function(CustomBottomBarState) then) =
      _$CustomBottomBarStateCopyWithImpl<$Res, CustomBottomBarState>;
  @useResult
  $Res call({PagesEnum currentPage});
}

/// @nodoc
class _$CustomBottomBarStateCopyWithImpl<$Res,
        $Val extends CustomBottomBarState>
    implements $CustomBottomBarStateCopyWith<$Res> {
  _$CustomBottomBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as PagesEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomBottomBarStateImplCopyWith<$Res>
    implements $CustomBottomBarStateCopyWith<$Res> {
  factory _$$CustomBottomBarStateImplCopyWith(_$CustomBottomBarStateImpl value,
          $Res Function(_$CustomBottomBarStateImpl) then) =
      __$$CustomBottomBarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PagesEnum currentPage});
}

/// @nodoc
class __$$CustomBottomBarStateImplCopyWithImpl<$Res>
    extends _$CustomBottomBarStateCopyWithImpl<$Res, _$CustomBottomBarStateImpl>
    implements _$$CustomBottomBarStateImplCopyWith<$Res> {
  __$$CustomBottomBarStateImplCopyWithImpl(_$CustomBottomBarStateImpl _value,
      $Res Function(_$CustomBottomBarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
  }) {
    return _then(_$CustomBottomBarStateImpl(
      null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as PagesEnum,
    ));
  }
}

/// @nodoc

class _$CustomBottomBarStateImpl implements _CustomBottomBarState {
  const _$CustomBottomBarStateImpl(this.currentPage);

  @override
  final PagesEnum currentPage;

  @override
  String toString() {
    return 'CustomBottomBarState(currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomBottomBarStateImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomBottomBarStateImplCopyWith<_$CustomBottomBarStateImpl>
      get copyWith =>
          __$$CustomBottomBarStateImplCopyWithImpl<_$CustomBottomBarStateImpl>(
              this, _$identity);
}

abstract class _CustomBottomBarState implements CustomBottomBarState {
  const factory _CustomBottomBarState(final PagesEnum currentPage) =
      _$CustomBottomBarStateImpl;

  @override
  PagesEnum get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$CustomBottomBarStateImplCopyWith<_$CustomBottomBarStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
