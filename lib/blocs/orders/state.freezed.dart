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
class _$OrdersStateTearOff {
  const _$OrdersStateTearOff();

  _OrdersState call({List<OrderModel> orders = const <OrderModel>[], bool isBusy = false, Exception? error}) {
    return _OrdersState(
      orders: orders,
      isBusy: isBusy,
      error: error,
    );
  }
}

/// @nodoc
const $OrdersState = _$OrdersStateTearOff();

/// @nodoc
mixin _$OrdersState {
  List<OrderModel> get orders => throw _privateConstructorUsedError;
  bool get isBusy => throw _privateConstructorUsedError;
  Exception? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersStateCopyWith<OrdersState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(OrdersState value, $Res Function(OrdersState) then) = _$OrdersStateCopyWithImpl<$Res>;
  $Res call({List<OrderModel> orders, bool isBusy, Exception? error});
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res> implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  final OrdersState _value;
  // ignore: unused_field
  final $Res Function(OrdersState) _then;

  @override
  $Res call({
    Object? orders = freezed,
    Object? isBusy = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      isBusy: isBusy == freezed
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc
abstract class _$OrdersStateCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
  factory _$OrdersStateCopyWith(_OrdersState value, $Res Function(_OrdersState) then) =
      __$OrdersStateCopyWithImpl<$Res>;
  @override
  $Res call({List<OrderModel> orders, bool isBusy, Exception? error});
}

/// @nodoc
class __$OrdersStateCopyWithImpl<$Res> extends _$OrdersStateCopyWithImpl<$Res> implements _$OrdersStateCopyWith<$Res> {
  __$OrdersStateCopyWithImpl(_OrdersState _value, $Res Function(_OrdersState) _then)
      : super(_value, (v) => _then(v as _OrdersState));

  @override
  _OrdersState get _value => super._value as _OrdersState;

  @override
  $Res call({
    Object? orders = freezed,
    Object? isBusy = freezed,
    Object? error = freezed,
  }) {
    return _then(_OrdersState(
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      isBusy: isBusy == freezed
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_OrdersState extends _OrdersState {
  const _$_OrdersState({this.orders = const <OrderModel>[], this.isBusy = false, this.error}) : super._();

  @JsonKey()
  @override
  final List<OrderModel> orders;
  @JsonKey()
  @override
  final bool isBusy;
  @override
  final Exception? error;

  @override
  String toString() {
    return 'OrdersState(orders: $orders, isBusy: $isBusy, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrdersState &&
            const DeepCollectionEquality().equals(other.orders, orders) &&
            const DeepCollectionEquality().equals(other.isBusy, isBusy) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(orders),
      const DeepCollectionEquality().hash(isBusy), const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$OrdersStateCopyWith<_OrdersState> get copyWith => __$OrdersStateCopyWithImpl<_OrdersState>(this, _$identity);
}

abstract class _OrdersState extends OrdersState {
  const factory _OrdersState({List<OrderModel> orders, bool isBusy, Exception? error}) = _$_OrdersState;
  const _OrdersState._() : super._();

  @override
  List<OrderModel> get orders;
  @override
  bool get isBusy;
  @override
  Exception? get error;
  @override
  @JsonKey(ignore: true)
  _$OrdersStateCopyWith<_OrdersState> get copyWith => throw _privateConstructorUsedError;
}
