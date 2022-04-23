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
class _$OrdersEventTearOff {
  const _$OrdersEventTearOff();

  OrdersEventInit init() {
    return const OrdersEventInit();
  }

  OrdersEventOnData onData(List<OrderModel> orders) {
    return OrdersEventOnData(
      orders,
    );
  }

  OrdersEventOnError onError(Exception error) {
    return OrdersEventOnError(
      error,
    );
  }

  OrdersEventAdd add(OrderModel orderModel) {
    return OrdersEventAdd(
      orderModel,
    );
  }

  OrdersEventDelete delete(OrderModel orderModel) {
    return OrdersEventDelete(
      orderModel,
    );
  }
}

/// @nodoc
const $OrdersEvent = _$OrdersEventTearOff();

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<OrderModel> orders) onData,
    required TResult Function(Exception error) onError,
    required TResult Function(OrderModel orderModel) add,
    required TResult Function(OrderModel orderModel) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<OrderModel> orders)? onData,
    TResult Function(Exception error)? onError,
    TResult Function(OrderModel orderModel)? add,
    TResult Function(OrderModel orderModel)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<OrderModel> orders)? onData,
    TResult Function(Exception error)? onError,
    TResult Function(OrderModel orderModel)? add,
    TResult Function(OrderModel orderModel)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrdersEventInit value) init,
    required TResult Function(OrdersEventOnData value) onData,
    required TResult Function(OrdersEventOnError value) onError,
    required TResult Function(OrdersEventAdd value) add,
    required TResult Function(OrdersEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OrdersEventInit value)? init,
    TResult Function(OrdersEventOnData value)? onData,
    TResult Function(OrdersEventOnError value)? onError,
    TResult Function(OrdersEventAdd value)? add,
    TResult Function(OrdersEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrdersEventInit value)? init,
    TResult Function(OrdersEventOnData value)? onData,
    TResult Function(OrdersEventOnError value)? onError,
    TResult Function(OrdersEventAdd value)? add,
    TResult Function(OrdersEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(OrdersEvent value, $Res Function(OrdersEvent) then) = _$OrdersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res> implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  final OrdersEvent _value;
  // ignore: unused_field
  final $Res Function(OrdersEvent) _then;
}

/// @nodoc
abstract class $OrdersEventInitCopyWith<$Res> {
  factory $OrdersEventInitCopyWith(OrdersEventInit value, $Res Function(OrdersEventInit) then) =
      _$OrdersEventInitCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrdersEventInitCopyWithImpl<$Res> extends _$OrdersEventCopyWithImpl<$Res>
    implements $OrdersEventInitCopyWith<$Res> {
  _$OrdersEventInitCopyWithImpl(OrdersEventInit _value, $Res Function(OrdersEventInit) _then)
      : super(_value, (v) => _then(v as OrdersEventInit));

  @override
  OrdersEventInit get _value => super._value as OrdersEventInit;
}

/// @nodoc

class _$OrdersEventInit implements OrdersEventInit {
  const _$OrdersEventInit();

  @override
  String toString() {
    return 'OrdersEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is OrdersEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<OrderModel> orders) onData,
    required TResult Function(Exception error) onError,
    required TResult Function(OrderModel orderModel) add,
    required TResult Function(OrderModel orderModel) delete,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<OrderModel> orders)? onData,
    TResult Function(Exception error)? onError,
    TResult Function(OrderModel orderModel)? add,
    TResult Function(OrderModel orderModel)? delete,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<OrderModel> orders)? onData,
    TResult Function(Exception error)? onError,
    TResult Function(OrderModel orderModel)? add,
    TResult Function(OrderModel orderModel)? delete,
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
    required TResult Function(OrdersEventInit value) init,
    required TResult Function(OrdersEventOnData value) onData,
    required TResult Function(OrdersEventOnError value) onError,
    required TResult Function(OrdersEventAdd value) add,
    required TResult Function(OrdersEventDelete value) delete,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OrdersEventInit value)? init,
    TResult Function(OrdersEventOnData value)? onData,
    TResult Function(OrdersEventOnError value)? onError,
    TResult Function(OrdersEventAdd value)? add,
    TResult Function(OrdersEventDelete value)? delete,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrdersEventInit value)? init,
    TResult Function(OrdersEventOnData value)? onData,
    TResult Function(OrdersEventOnError value)? onError,
    TResult Function(OrdersEventAdd value)? add,
    TResult Function(OrdersEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class OrdersEventInit implements OrdersEvent {
  const factory OrdersEventInit() = _$OrdersEventInit;
}

/// @nodoc
abstract class $OrdersEventOnDataCopyWith<$Res> {
  factory $OrdersEventOnDataCopyWith(OrdersEventOnData value, $Res Function(OrdersEventOnData) then) =
      _$OrdersEventOnDataCopyWithImpl<$Res>;
  $Res call({List<OrderModel> orders});
}

/// @nodoc
class _$OrdersEventOnDataCopyWithImpl<$Res> extends _$OrdersEventCopyWithImpl<$Res>
    implements $OrdersEventOnDataCopyWith<$Res> {
  _$OrdersEventOnDataCopyWithImpl(OrdersEventOnData _value, $Res Function(OrdersEventOnData) _then)
      : super(_value, (v) => _then(v as OrdersEventOnData));

  @override
  OrdersEventOnData get _value => super._value as OrdersEventOnData;

  @override
  $Res call({
    Object? orders = freezed,
  }) {
    return _then(OrdersEventOnData(
      orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ));
  }
}

/// @nodoc

class _$OrdersEventOnData implements OrdersEventOnData {
  const _$OrdersEventOnData(this.orders);

  @override
  final List<OrderModel> orders;

  @override
  String toString() {
    return 'OrdersEvent.onData(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrdersEventOnData &&
            const DeepCollectionEquality().equals(other.orders, orders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(orders));

  @JsonKey(ignore: true)
  @override
  $OrdersEventOnDataCopyWith<OrdersEventOnData> get copyWith =>
      _$OrdersEventOnDataCopyWithImpl<OrdersEventOnData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<OrderModel> orders) onData,
    required TResult Function(Exception error) onError,
    required TResult Function(OrderModel orderModel) add,
    required TResult Function(OrderModel orderModel) delete,
  }) {
    return onData(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<OrderModel> orders)? onData,
    TResult Function(Exception error)? onError,
    TResult Function(OrderModel orderModel)? add,
    TResult Function(OrderModel orderModel)? delete,
  }) {
    return onData?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<OrderModel> orders)? onData,
    TResult Function(Exception error)? onError,
    TResult Function(OrderModel orderModel)? add,
    TResult Function(OrderModel orderModel)? delete,
    required TResult orElse(),
  }) {
    if (onData != null) {
      return onData(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrdersEventInit value) init,
    required TResult Function(OrdersEventOnData value) onData,
    required TResult Function(OrdersEventOnError value) onError,
    required TResult Function(OrdersEventAdd value) add,
    required TResult Function(OrdersEventDelete value) delete,
  }) {
    return onData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OrdersEventInit value)? init,
    TResult Function(OrdersEventOnData value)? onData,
    TResult Function(OrdersEventOnError value)? onError,
    TResult Function(OrdersEventAdd value)? add,
    TResult Function(OrdersEventDelete value)? delete,
  }) {
    return onData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrdersEventInit value)? init,
    TResult Function(OrdersEventOnData value)? onData,
    TResult Function(OrdersEventOnError value)? onError,
    TResult Function(OrdersEventAdd value)? add,
    TResult Function(OrdersEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (onData != null) {
      return onData(this);
    }
    return orElse();
  }
}

abstract class OrdersEventOnData implements OrdersEvent {
  const factory OrdersEventOnData(List<OrderModel> orders) = _$OrdersEventOnData;

  List<OrderModel> get orders;
  @JsonKey(ignore: true)
  $OrdersEventOnDataCopyWith<OrdersEventOnData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventOnErrorCopyWith<$Res> {
  factory $OrdersEventOnErrorCopyWith(OrdersEventOnError value, $Res Function(OrdersEventOnError) then) =
      _$OrdersEventOnErrorCopyWithImpl<$Res>;
  $Res call({Exception error});
}

/// @nodoc
class _$OrdersEventOnErrorCopyWithImpl<$Res> extends _$OrdersEventCopyWithImpl<$Res>
    implements $OrdersEventOnErrorCopyWith<$Res> {
  _$OrdersEventOnErrorCopyWithImpl(OrdersEventOnError _value, $Res Function(OrdersEventOnError) _then)
      : super(_value, (v) => _then(v as OrdersEventOnError));

  @override
  OrdersEventOnError get _value => super._value as OrdersEventOnError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(OrdersEventOnError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$OrdersEventOnError implements OrdersEventOnError {
  const _$OrdersEventOnError(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'OrdersEvent.onError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrdersEventOnError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $OrdersEventOnErrorCopyWith<OrdersEventOnError> get copyWith =>
      _$OrdersEventOnErrorCopyWithImpl<OrdersEventOnError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<OrderModel> orders) onData,
    required TResult Function(Exception error) onError,
    required TResult Function(OrderModel orderModel) add,
    required TResult Function(OrderModel orderModel) delete,
  }) {
    return onError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<OrderModel> orders)? onData,
    TResult Function(Exception error)? onError,
    TResult Function(OrderModel orderModel)? add,
    TResult Function(OrderModel orderModel)? delete,
  }) {
    return onError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<OrderModel> orders)? onData,
    TResult Function(Exception error)? onError,
    TResult Function(OrderModel orderModel)? add,
    TResult Function(OrderModel orderModel)? delete,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrdersEventInit value) init,
    required TResult Function(OrdersEventOnData value) onData,
    required TResult Function(OrdersEventOnError value) onError,
    required TResult Function(OrdersEventAdd value) add,
    required TResult Function(OrdersEventDelete value) delete,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OrdersEventInit value)? init,
    TResult Function(OrdersEventOnData value)? onData,
    TResult Function(OrdersEventOnError value)? onError,
    TResult Function(OrdersEventAdd value)? add,
    TResult Function(OrdersEventDelete value)? delete,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrdersEventInit value)? init,
    TResult Function(OrdersEventOnData value)? onData,
    TResult Function(OrdersEventOnError value)? onError,
    TResult Function(OrdersEventAdd value)? add,
    TResult Function(OrdersEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class OrdersEventOnError implements OrdersEvent {
  const factory OrdersEventOnError(Exception error) = _$OrdersEventOnError;

  Exception get error;
  @JsonKey(ignore: true)
  $OrdersEventOnErrorCopyWith<OrdersEventOnError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventAddCopyWith<$Res> {
  factory $OrdersEventAddCopyWith(OrdersEventAdd value, $Res Function(OrdersEventAdd) then) =
      _$OrdersEventAddCopyWithImpl<$Res>;
  $Res call({OrderModel orderModel});
}

/// @nodoc
class _$OrdersEventAddCopyWithImpl<$Res> extends _$OrdersEventCopyWithImpl<$Res>
    implements $OrdersEventAddCopyWith<$Res> {
  _$OrdersEventAddCopyWithImpl(OrdersEventAdd _value, $Res Function(OrdersEventAdd) _then)
      : super(_value, (v) => _then(v as OrdersEventAdd));

  @override
  OrdersEventAdd get _value => super._value as OrdersEventAdd;

  @override
  $Res call({
    Object? orderModel = freezed,
  }) {
    return _then(OrdersEventAdd(
      orderModel == freezed
          ? _value.orderModel
          : orderModel // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }
}

/// @nodoc

class _$OrdersEventAdd implements OrdersEventAdd {
  const _$OrdersEventAdd(this.orderModel);

  @override
  final OrderModel orderModel;

  @override
  String toString() {
    return 'OrdersEvent.add(orderModel: $orderModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrdersEventAdd &&
            const DeepCollectionEquality().equals(other.orderModel, orderModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(orderModel));

  @JsonKey(ignore: true)
  @override
  $OrdersEventAddCopyWith<OrdersEventAdd> get copyWith =>
      _$OrdersEventAddCopyWithImpl<OrdersEventAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<OrderModel> orders) onData,
    required TResult Function(Exception error) onError,
    required TResult Function(OrderModel orderModel) add,
    required TResult Function(OrderModel orderModel) delete,
  }) {
    return add(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<OrderModel> orders)? onData,
    TResult Function(Exception error)? onError,
    TResult Function(OrderModel orderModel)? add,
    TResult Function(OrderModel orderModel)? delete,
  }) {
    return add?.call(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<OrderModel> orders)? onData,
    TResult Function(Exception error)? onError,
    TResult Function(OrderModel orderModel)? add,
    TResult Function(OrderModel orderModel)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(orderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrdersEventInit value) init,
    required TResult Function(OrdersEventOnData value) onData,
    required TResult Function(OrdersEventOnError value) onError,
    required TResult Function(OrdersEventAdd value) add,
    required TResult Function(OrdersEventDelete value) delete,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OrdersEventInit value)? init,
    TResult Function(OrdersEventOnData value)? onData,
    TResult Function(OrdersEventOnError value)? onError,
    TResult Function(OrdersEventAdd value)? add,
    TResult Function(OrdersEventDelete value)? delete,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrdersEventInit value)? init,
    TResult Function(OrdersEventOnData value)? onData,
    TResult Function(OrdersEventOnError value)? onError,
    TResult Function(OrdersEventAdd value)? add,
    TResult Function(OrdersEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class OrdersEventAdd implements OrdersEvent {
  const factory OrdersEventAdd(OrderModel orderModel) = _$OrdersEventAdd;

  OrderModel get orderModel;
  @JsonKey(ignore: true)
  $OrdersEventAddCopyWith<OrdersEventAdd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventDeleteCopyWith<$Res> {
  factory $OrdersEventDeleteCopyWith(OrdersEventDelete value, $Res Function(OrdersEventDelete) then) =
      _$OrdersEventDeleteCopyWithImpl<$Res>;
  $Res call({OrderModel orderModel});
}

/// @nodoc
class _$OrdersEventDeleteCopyWithImpl<$Res> extends _$OrdersEventCopyWithImpl<$Res>
    implements $OrdersEventDeleteCopyWith<$Res> {
  _$OrdersEventDeleteCopyWithImpl(OrdersEventDelete _value, $Res Function(OrdersEventDelete) _then)
      : super(_value, (v) => _then(v as OrdersEventDelete));

  @override
  OrdersEventDelete get _value => super._value as OrdersEventDelete;

  @override
  $Res call({
    Object? orderModel = freezed,
  }) {
    return _then(OrdersEventDelete(
      orderModel == freezed
          ? _value.orderModel
          : orderModel // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }
}

/// @nodoc

class _$OrdersEventDelete implements OrdersEventDelete {
  const _$OrdersEventDelete(this.orderModel);

  @override
  final OrderModel orderModel;

  @override
  String toString() {
    return 'OrdersEvent.delete(orderModel: $orderModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrdersEventDelete &&
            const DeepCollectionEquality().equals(other.orderModel, orderModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(orderModel));

  @JsonKey(ignore: true)
  @override
  $OrdersEventDeleteCopyWith<OrdersEventDelete> get copyWith =>
      _$OrdersEventDeleteCopyWithImpl<OrdersEventDelete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<OrderModel> orders) onData,
    required TResult Function(Exception error) onError,
    required TResult Function(OrderModel orderModel) add,
    required TResult Function(OrderModel orderModel) delete,
  }) {
    return delete(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<OrderModel> orders)? onData,
    TResult Function(Exception error)? onError,
    TResult Function(OrderModel orderModel)? add,
    TResult Function(OrderModel orderModel)? delete,
  }) {
    return delete?.call(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<OrderModel> orders)? onData,
    TResult Function(Exception error)? onError,
    TResult Function(OrderModel orderModel)? add,
    TResult Function(OrderModel orderModel)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(orderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrdersEventInit value) init,
    required TResult Function(OrdersEventOnData value) onData,
    required TResult Function(OrdersEventOnError value) onError,
    required TResult Function(OrdersEventAdd value) add,
    required TResult Function(OrdersEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OrdersEventInit value)? init,
    TResult Function(OrdersEventOnData value)? onData,
    TResult Function(OrdersEventOnError value)? onError,
    TResult Function(OrdersEventAdd value)? add,
    TResult Function(OrdersEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrdersEventInit value)? init,
    TResult Function(OrdersEventOnData value)? onData,
    TResult Function(OrdersEventOnError value)? onError,
    TResult Function(OrdersEventAdd value)? add,
    TResult Function(OrdersEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class OrdersEventDelete implements OrdersEvent {
  const factory OrdersEventDelete(OrderModel orderModel) = _$OrdersEventDelete;

  OrderModel get orderModel;
  @JsonKey(ignore: true)
  $OrdersEventDeleteCopyWith<OrdersEventDelete> get copyWith => throw _privateConstructorUsedError;
}
