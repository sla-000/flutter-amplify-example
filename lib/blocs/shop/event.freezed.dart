// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShopEventTearOff {
  const _$ShopEventTearOff();

  ShopEventInit init() {
    return const ShopEventInit();
  }

  ShopEventSetShop setShop(ShopModel shop) {
    return ShopEventSetShop(
      shop,
    );
  }

  ShopEventSetError setError(Exception error) {
    return ShopEventSetError(
      error,
    );
  }
}

/// @nodoc
const $ShopEvent = _$ShopEventTearOff();

/// @nodoc
mixin _$ShopEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ShopModel shop) setShop,
    required TResult Function(Exception error) setError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ShopModel shop)? setShop,
    TResult Function(Exception error)? setError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ShopModel shop)? setShop,
    TResult Function(Exception error)? setError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopEventInit value) init,
    required TResult Function(ShopEventSetShop value) setShop,
    required TResult Function(ShopEventSetError value) setError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShopEventInit value)? init,
    TResult Function(ShopEventSetShop value)? setShop,
    TResult Function(ShopEventSetError value)? setError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopEventInit value)? init,
    TResult Function(ShopEventSetShop value)? setShop,
    TResult Function(ShopEventSetError value)? setError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopEventCopyWith<$Res> {
  factory $ShopEventCopyWith(ShopEvent value, $Res Function(ShopEvent) then) = _$ShopEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopEventCopyWithImpl<$Res> implements $ShopEventCopyWith<$Res> {
  _$ShopEventCopyWithImpl(this._value, this._then);

  final ShopEvent _value;
  // ignore: unused_field
  final $Res Function(ShopEvent) _then;
}

/// @nodoc
abstract class $ShopEventInitCopyWith<$Res> {
  factory $ShopEventInitCopyWith(ShopEventInit value, $Res Function(ShopEventInit) then) =
      _$ShopEventInitCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopEventInitCopyWithImpl<$Res> extends _$ShopEventCopyWithImpl<$Res> implements $ShopEventInitCopyWith<$Res> {
  _$ShopEventInitCopyWithImpl(ShopEventInit _value, $Res Function(ShopEventInit) _then)
      : super(_value, (v) => _then(v as ShopEventInit));

  @override
  ShopEventInit get _value => super._value as ShopEventInit;
}

/// @nodoc

class _$ShopEventInit implements ShopEventInit {
  const _$ShopEventInit();

  @override
  String toString() {
    return 'ShopEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is ShopEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ShopModel shop) setShop,
    required TResult Function(Exception error) setError,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ShopModel shop)? setShop,
    TResult Function(Exception error)? setError,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ShopModel shop)? setShop,
    TResult Function(Exception error)? setError,
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
    required TResult Function(ShopEventInit value) init,
    required TResult Function(ShopEventSetShop value) setShop,
    required TResult Function(ShopEventSetError value) setError,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShopEventInit value)? init,
    TResult Function(ShopEventSetShop value)? setShop,
    TResult Function(ShopEventSetError value)? setError,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopEventInit value)? init,
    TResult Function(ShopEventSetShop value)? setShop,
    TResult Function(ShopEventSetError value)? setError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ShopEventInit implements ShopEvent {
  const factory ShopEventInit() = _$ShopEventInit;
}

/// @nodoc
abstract class $ShopEventSetShopCopyWith<$Res> {
  factory $ShopEventSetShopCopyWith(ShopEventSetShop value, $Res Function(ShopEventSetShop) then) =
      _$ShopEventSetShopCopyWithImpl<$Res>;
  $Res call({ShopModel shop});
}

/// @nodoc
class _$ShopEventSetShopCopyWithImpl<$Res> extends _$ShopEventCopyWithImpl<$Res>
    implements $ShopEventSetShopCopyWith<$Res> {
  _$ShopEventSetShopCopyWithImpl(ShopEventSetShop _value, $Res Function(ShopEventSetShop) _then)
      : super(_value, (v) => _then(v as ShopEventSetShop));

  @override
  ShopEventSetShop get _value => super._value as ShopEventSetShop;

  @override
  $Res call({
    Object? shop = freezed,
  }) {
    return _then(ShopEventSetShop(
      shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopModel,
    ));
  }
}

/// @nodoc

class _$ShopEventSetShop implements ShopEventSetShop {
  const _$ShopEventSetShop(this.shop);

  @override
  final ShopModel shop;

  @override
  String toString() {
    return 'ShopEvent.setShop(shop: $shop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShopEventSetShop &&
            const DeepCollectionEquality().equals(other.shop, shop));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(shop));

  @JsonKey(ignore: true)
  @override
  $ShopEventSetShopCopyWith<ShopEventSetShop> get copyWith =>
      _$ShopEventSetShopCopyWithImpl<ShopEventSetShop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ShopModel shop) setShop,
    required TResult Function(Exception error) setError,
  }) {
    return setShop(shop);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ShopModel shop)? setShop,
    TResult Function(Exception error)? setError,
  }) {
    return setShop?.call(shop);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ShopModel shop)? setShop,
    TResult Function(Exception error)? setError,
    required TResult orElse(),
  }) {
    if (setShop != null) {
      return setShop(shop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopEventInit value) init,
    required TResult Function(ShopEventSetShop value) setShop,
    required TResult Function(ShopEventSetError value) setError,
  }) {
    return setShop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShopEventInit value)? init,
    TResult Function(ShopEventSetShop value)? setShop,
    TResult Function(ShopEventSetError value)? setError,
  }) {
    return setShop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopEventInit value)? init,
    TResult Function(ShopEventSetShop value)? setShop,
    TResult Function(ShopEventSetError value)? setError,
    required TResult orElse(),
  }) {
    if (setShop != null) {
      return setShop(this);
    }
    return orElse();
  }
}

abstract class ShopEventSetShop implements ShopEvent {
  const factory ShopEventSetShop(ShopModel shop) = _$ShopEventSetShop;

  ShopModel get shop;
  @JsonKey(ignore: true)
  $ShopEventSetShopCopyWith<ShopEventSetShop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopEventSetErrorCopyWith<$Res> {
  factory $ShopEventSetErrorCopyWith(ShopEventSetError value, $Res Function(ShopEventSetError) then) =
      _$ShopEventSetErrorCopyWithImpl<$Res>;
  $Res call({Exception error});
}

/// @nodoc
class _$ShopEventSetErrorCopyWithImpl<$Res> extends _$ShopEventCopyWithImpl<$Res>
    implements $ShopEventSetErrorCopyWith<$Res> {
  _$ShopEventSetErrorCopyWithImpl(ShopEventSetError _value, $Res Function(ShopEventSetError) _then)
      : super(_value, (v) => _then(v as ShopEventSetError));

  @override
  ShopEventSetError get _value => super._value as ShopEventSetError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ShopEventSetError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$ShopEventSetError implements ShopEventSetError {
  const _$ShopEventSetError(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'ShopEvent.setError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShopEventSetError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ShopEventSetErrorCopyWith<ShopEventSetError> get copyWith =>
      _$ShopEventSetErrorCopyWithImpl<ShopEventSetError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ShopModel shop) setShop,
    required TResult Function(Exception error) setError,
  }) {
    return setError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ShopModel shop)? setShop,
    TResult Function(Exception error)? setError,
  }) {
    return setError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ShopModel shop)? setShop,
    TResult Function(Exception error)? setError,
    required TResult orElse(),
  }) {
    if (setError != null) {
      return setError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopEventInit value) init,
    required TResult Function(ShopEventSetShop value) setShop,
    required TResult Function(ShopEventSetError value) setError,
  }) {
    return setError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShopEventInit value)? init,
    TResult Function(ShopEventSetShop value)? setShop,
    TResult Function(ShopEventSetError value)? setError,
  }) {
    return setError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopEventInit value)? init,
    TResult Function(ShopEventSetShop value)? setShop,
    TResult Function(ShopEventSetError value)? setError,
    required TResult orElse(),
  }) {
    if (setError != null) {
      return setError(this);
    }
    return orElse();
  }
}

abstract class ShopEventSetError implements ShopEvent {
  const factory ShopEventSetError(Exception error) = _$ShopEventSetError;

  Exception get error;
  @JsonKey(ignore: true)
  $ShopEventSetErrorCopyWith<ShopEventSetError> get copyWith => throw _privateConstructorUsedError;
}
