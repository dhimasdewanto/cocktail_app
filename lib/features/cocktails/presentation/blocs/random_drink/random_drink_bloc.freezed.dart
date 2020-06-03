// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'random_drink_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RandomDrinkEventTearOff {
  const _$RandomDrinkEventTearOff();

  _GetRandomDrinkEvent call() {
    return const _GetRandomDrinkEvent();
  }
}

// ignore: unused_element
const $RandomDrinkEvent = _$RandomDrinkEventTearOff();

mixin _$RandomDrinkEvent {}

abstract class $RandomDrinkEventCopyWith<$Res> {
  factory $RandomDrinkEventCopyWith(
          RandomDrinkEvent value, $Res Function(RandomDrinkEvent) then) =
      _$RandomDrinkEventCopyWithImpl<$Res>;
}

class _$RandomDrinkEventCopyWithImpl<$Res>
    implements $RandomDrinkEventCopyWith<$Res> {
  _$RandomDrinkEventCopyWithImpl(this._value, this._then);

  final RandomDrinkEvent _value;
  // ignore: unused_field
  final $Res Function(RandomDrinkEvent) _then;
}

abstract class _$GetRandomDrinkEventCopyWith<$Res> {
  factory _$GetRandomDrinkEventCopyWith(_GetRandomDrinkEvent value,
          $Res Function(_GetRandomDrinkEvent) then) =
      __$GetRandomDrinkEventCopyWithImpl<$Res>;
}

class __$GetRandomDrinkEventCopyWithImpl<$Res>
    extends _$RandomDrinkEventCopyWithImpl<$Res>
    implements _$GetRandomDrinkEventCopyWith<$Res> {
  __$GetRandomDrinkEventCopyWithImpl(
      _GetRandomDrinkEvent _value, $Res Function(_GetRandomDrinkEvent) _then)
      : super(_value, (v) => _then(v as _GetRandomDrinkEvent));

  @override
  _GetRandomDrinkEvent get _value => super._value as _GetRandomDrinkEvent;
}

class _$_GetRandomDrinkEvent implements _GetRandomDrinkEvent {
  const _$_GetRandomDrinkEvent();

  @override
  String toString() {
    return 'RandomDrinkEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetRandomDrinkEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _GetRandomDrinkEvent implements RandomDrinkEvent {
  const factory _GetRandomDrinkEvent() = _$_GetRandomDrinkEvent;
}

class _$RandomDrinkStateTearOff {
  const _$RandomDrinkStateTearOff();

  _RandomDrinkState call({Drink drink}) {
    return _RandomDrinkState(
      drink: drink,
    );
  }

  _LoadingRandomDrinkState loading() {
    return const _LoadingRandomDrinkState();
  }

  _InitialRandomDrinkState initial() {
    return const _InitialRandomDrinkState();
  }

  _ErrorRandomDrinkState error({String message}) {
    return _ErrorRandomDrinkState(
      message: message,
    );
  }
}

// ignore: unused_element
const $RandomDrinkState = _$RandomDrinkStateTearOff();

mixin _$RandomDrinkState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(Drink drink), {
    @required Result loading(),
    @required Result initial(),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(Drink drink), {
    Result loading(),
    Result initial(),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_RandomDrinkState value), {
    @required Result loading(_LoadingRandomDrinkState value),
    @required Result initial(_InitialRandomDrinkState value),
    @required Result error(_ErrorRandomDrinkState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_RandomDrinkState value), {
    Result loading(_LoadingRandomDrinkState value),
    Result initial(_InitialRandomDrinkState value),
    Result error(_ErrorRandomDrinkState value),
    @required Result orElse(),
  });
}

abstract class $RandomDrinkStateCopyWith<$Res> {
  factory $RandomDrinkStateCopyWith(
          RandomDrinkState value, $Res Function(RandomDrinkState) then) =
      _$RandomDrinkStateCopyWithImpl<$Res>;
}

class _$RandomDrinkStateCopyWithImpl<$Res>
    implements $RandomDrinkStateCopyWith<$Res> {
  _$RandomDrinkStateCopyWithImpl(this._value, this._then);

  final RandomDrinkState _value;
  // ignore: unused_field
  final $Res Function(RandomDrinkState) _then;
}

abstract class _$RandomDrinkStateCopyWith<$Res> {
  factory _$RandomDrinkStateCopyWith(
          _RandomDrinkState value, $Res Function(_RandomDrinkState) then) =
      __$RandomDrinkStateCopyWithImpl<$Res>;
  $Res call({Drink drink});

  $DrinkCopyWith<$Res> get drink;
}

class __$RandomDrinkStateCopyWithImpl<$Res>
    extends _$RandomDrinkStateCopyWithImpl<$Res>
    implements _$RandomDrinkStateCopyWith<$Res> {
  __$RandomDrinkStateCopyWithImpl(
      _RandomDrinkState _value, $Res Function(_RandomDrinkState) _then)
      : super(_value, (v) => _then(v as _RandomDrinkState));

  @override
  _RandomDrinkState get _value => super._value as _RandomDrinkState;

  @override
  $Res call({
    Object drink = freezed,
  }) {
    return _then(_RandomDrinkState(
      drink: drink == freezed ? _value.drink : drink as Drink,
    ));
  }

  @override
  $DrinkCopyWith<$Res> get drink {
    if (_value.drink == null) {
      return null;
    }
    return $DrinkCopyWith<$Res>(_value.drink, (value) {
      return _then(_value.copyWith(drink: value));
    });
  }
}

class _$_RandomDrinkState implements _RandomDrinkState {
  const _$_RandomDrinkState({this.drink});

  @override
  final Drink drink;

  @override
  String toString() {
    return 'RandomDrinkState(drink: $drink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RandomDrinkState &&
            (identical(other.drink, drink) ||
                const DeepCollectionEquality().equals(other.drink, drink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(drink);

  @override
  _$RandomDrinkStateCopyWith<_RandomDrinkState> get copyWith =>
      __$RandomDrinkStateCopyWithImpl<_RandomDrinkState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(Drink drink), {
    @required Result loading(),
    @required Result initial(),
    @required Result error(String message),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(initial != null);
    assert(error != null);
    return $default(drink);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(Drink drink), {
    Result loading(),
    Result initial(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(drink);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_RandomDrinkState value), {
    @required Result loading(_LoadingRandomDrinkState value),
    @required Result initial(_InitialRandomDrinkState value),
    @required Result error(_ErrorRandomDrinkState value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(initial != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_RandomDrinkState value), {
    Result loading(_LoadingRandomDrinkState value),
    Result initial(_InitialRandomDrinkState value),
    Result error(_ErrorRandomDrinkState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _RandomDrinkState implements RandomDrinkState {
  const factory _RandomDrinkState({Drink drink}) = _$_RandomDrinkState;

  Drink get drink;
  _$RandomDrinkStateCopyWith<_RandomDrinkState> get copyWith;
}

abstract class _$LoadingRandomDrinkStateCopyWith<$Res> {
  factory _$LoadingRandomDrinkStateCopyWith(_LoadingRandomDrinkState value,
          $Res Function(_LoadingRandomDrinkState) then) =
      __$LoadingRandomDrinkStateCopyWithImpl<$Res>;
}

class __$LoadingRandomDrinkStateCopyWithImpl<$Res>
    extends _$RandomDrinkStateCopyWithImpl<$Res>
    implements _$LoadingRandomDrinkStateCopyWith<$Res> {
  __$LoadingRandomDrinkStateCopyWithImpl(_LoadingRandomDrinkState _value,
      $Res Function(_LoadingRandomDrinkState) _then)
      : super(_value, (v) => _then(v as _LoadingRandomDrinkState));

  @override
  _LoadingRandomDrinkState get _value =>
      super._value as _LoadingRandomDrinkState;
}

class _$_LoadingRandomDrinkState implements _LoadingRandomDrinkState {
  const _$_LoadingRandomDrinkState();

  @override
  String toString() {
    return 'RandomDrinkState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingRandomDrinkState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(Drink drink), {
    @required Result loading(),
    @required Result initial(),
    @required Result error(String message),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(initial != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(Drink drink), {
    Result loading(),
    Result initial(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_RandomDrinkState value), {
    @required Result loading(_LoadingRandomDrinkState value),
    @required Result initial(_InitialRandomDrinkState value),
    @required Result error(_ErrorRandomDrinkState value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(initial != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_RandomDrinkState value), {
    Result loading(_LoadingRandomDrinkState value),
    Result initial(_InitialRandomDrinkState value),
    Result error(_ErrorRandomDrinkState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingRandomDrinkState implements RandomDrinkState {
  const factory _LoadingRandomDrinkState() = _$_LoadingRandomDrinkState;
}

abstract class _$InitialRandomDrinkStateCopyWith<$Res> {
  factory _$InitialRandomDrinkStateCopyWith(_InitialRandomDrinkState value,
          $Res Function(_InitialRandomDrinkState) then) =
      __$InitialRandomDrinkStateCopyWithImpl<$Res>;
}

class __$InitialRandomDrinkStateCopyWithImpl<$Res>
    extends _$RandomDrinkStateCopyWithImpl<$Res>
    implements _$InitialRandomDrinkStateCopyWith<$Res> {
  __$InitialRandomDrinkStateCopyWithImpl(_InitialRandomDrinkState _value,
      $Res Function(_InitialRandomDrinkState) _then)
      : super(_value, (v) => _then(v as _InitialRandomDrinkState));

  @override
  _InitialRandomDrinkState get _value =>
      super._value as _InitialRandomDrinkState;
}

class _$_InitialRandomDrinkState implements _InitialRandomDrinkState {
  const _$_InitialRandomDrinkState();

  @override
  String toString() {
    return 'RandomDrinkState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialRandomDrinkState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(Drink drink), {
    @required Result loading(),
    @required Result initial(),
    @required Result error(String message),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(initial != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(Drink drink), {
    Result loading(),
    Result initial(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_RandomDrinkState value), {
    @required Result loading(_LoadingRandomDrinkState value),
    @required Result initial(_InitialRandomDrinkState value),
    @required Result error(_ErrorRandomDrinkState value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(initial != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_RandomDrinkState value), {
    Result loading(_LoadingRandomDrinkState value),
    Result initial(_InitialRandomDrinkState value),
    Result error(_ErrorRandomDrinkState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialRandomDrinkState implements RandomDrinkState {
  const factory _InitialRandomDrinkState() = _$_InitialRandomDrinkState;
}

abstract class _$ErrorRandomDrinkStateCopyWith<$Res> {
  factory _$ErrorRandomDrinkStateCopyWith(_ErrorRandomDrinkState value,
          $Res Function(_ErrorRandomDrinkState) then) =
      __$ErrorRandomDrinkStateCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$ErrorRandomDrinkStateCopyWithImpl<$Res>
    extends _$RandomDrinkStateCopyWithImpl<$Res>
    implements _$ErrorRandomDrinkStateCopyWith<$Res> {
  __$ErrorRandomDrinkStateCopyWithImpl(_ErrorRandomDrinkState _value,
      $Res Function(_ErrorRandomDrinkState) _then)
      : super(_value, (v) => _then(v as _ErrorRandomDrinkState));

  @override
  _ErrorRandomDrinkState get _value => super._value as _ErrorRandomDrinkState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ErrorRandomDrinkState(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_ErrorRandomDrinkState implements _ErrorRandomDrinkState {
  const _$_ErrorRandomDrinkState({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RandomDrinkState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorRandomDrinkState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$ErrorRandomDrinkStateCopyWith<_ErrorRandomDrinkState> get copyWith =>
      __$ErrorRandomDrinkStateCopyWithImpl<_ErrorRandomDrinkState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(Drink drink), {
    @required Result loading(),
    @required Result initial(),
    @required Result error(String message),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(initial != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(Drink drink), {
    Result loading(),
    Result initial(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_RandomDrinkState value), {
    @required Result loading(_LoadingRandomDrinkState value),
    @required Result initial(_InitialRandomDrinkState value),
    @required Result error(_ErrorRandomDrinkState value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(initial != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_RandomDrinkState value), {
    Result loading(_LoadingRandomDrinkState value),
    Result initial(_InitialRandomDrinkState value),
    Result error(_ErrorRandomDrinkState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorRandomDrinkState implements RandomDrinkState {
  const factory _ErrorRandomDrinkState({String message}) =
      _$_ErrorRandomDrinkState;

  String get message;
  _$ErrorRandomDrinkStateCopyWith<_ErrorRandomDrinkState> get copyWith;
}
