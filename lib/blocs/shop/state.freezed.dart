// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShopStateTearOff {
  const _$ShopStateTearOff();

  _ShopState call({ShopModel? shop, Exception? error}) {
    return _ShopState(
      shop: shop,
      error: error,
    );
  }
}

/// @nodoc
const $ShopState = _$ShopStateTearOff();

/// @nodoc
mixin _$ShopState {
  ShopModel? get shop => throw _privateConstructorUsedError;
  Exception? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopStateCopyWith<ShopState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopStateCopyWith<$Res> {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) then) = _$ShopStateCopyWithImpl<$Res>;
  $Res call({ShopModel? shop, Exception? error});
}

/// @nodoc
class _$ShopStateCopyWithImpl<$Res> implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._value, this._then);

  final ShopState _value;
  // ignore: unused_field
  final $Res Function(ShopState) _then;

  @override
  $Res call({
    Object? shop = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopModel?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc
abstract class _$ShopStateCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory _$ShopStateCopyWith(_ShopState value, $Res Function(_ShopState) then) = __$ShopStateCopyWithImpl<$Res>;
  @override
  $Res call({ShopModel? shop, Exception? error});
}

/// @nodoc
class __$ShopStateCopyWithImpl<$Res> extends _$ShopStateCopyWithImpl<$Res> implements _$ShopStateCopyWith<$Res> {
  __$ShopStateCopyWithImpl(_ShopState _value, $Res Function(_ShopState) _then)
      : super(_value, (v) => _then(v as _ShopState));

  @override
  _ShopState get _value => super._value as _ShopState;

  @override
  $Res call({
    Object? shop = freezed,
    Object? error = freezed,
  }) {
    return _then(_ShopState(
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopModel?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_ShopState extends _ShopState {
  const _$_ShopState({this.shop, this.error}) : super._();

  @override
  final ShopModel? shop;
  @override
  final Exception? error;

  @override
  String toString() {
    return 'ShopState(shop: $shop, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShopState &&
            const DeepCollectionEquality().equals(other.shop, shop) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(shop), const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$ShopStateCopyWith<_ShopState> get copyWith => __$ShopStateCopyWithImpl<_ShopState>(this, _$identity);
}

abstract class _ShopState extends ShopState {
  const factory _ShopState({ShopModel? shop, Exception? error}) = _$_ShopState;
  const _ShopState._() : super._();

  @override
  ShopModel? get shop;
  @override
  Exception? get error;
  @override
  @JsonKey(ignore: true)
  _$ShopStateCopyWith<_ShopState> get copyWith => throw _privateConstructorUsedError;
}
