// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'letter_list_drinks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LetterListDrinksEventTearOff {
  const _$LetterListDrinksEventTearOff();

  _LetterListDrinksEvent call(String letter) {
    return _LetterListDrinksEvent(
      letter,
    );
  }
}

// ignore: unused_element
const $LetterListDrinksEvent = _$LetterListDrinksEventTearOff();

mixin _$LetterListDrinksEvent {
  String get letter;

  $LetterListDrinksEventCopyWith<LetterListDrinksEvent> get copyWith;
}

abstract class $LetterListDrinksEventCopyWith<$Res> {
  factory $LetterListDrinksEventCopyWith(LetterListDrinksEvent value,
          $Res Function(LetterListDrinksEvent) then) =
      _$LetterListDrinksEventCopyWithImpl<$Res>;
  $Res call({String letter});
}

class _$LetterListDrinksEventCopyWithImpl<$Res>
    implements $LetterListDrinksEventCopyWith<$Res> {
  _$LetterListDrinksEventCopyWithImpl(this._value, this._then);

  final LetterListDrinksEvent _value;
  // ignore: unused_field
  final $Res Function(LetterListDrinksEvent) _then;

  @override
  $Res call({
    Object letter = freezed,
  }) {
    return _then(_value.copyWith(
      letter: letter == freezed ? _value.letter : letter as String,
    ));
  }
}

abstract class _$LetterListDrinksEventCopyWith<$Res>
    implements $LetterListDrinksEventCopyWith<$Res> {
  factory _$LetterListDrinksEventCopyWith(_LetterListDrinksEvent value,
          $Res Function(_LetterListDrinksEvent) then) =
      __$LetterListDrinksEventCopyWithImpl<$Res>;
  @override
  $Res call({String letter});
}

class __$LetterListDrinksEventCopyWithImpl<$Res>
    extends _$LetterListDrinksEventCopyWithImpl<$Res>
    implements _$LetterListDrinksEventCopyWith<$Res> {
  __$LetterListDrinksEventCopyWithImpl(_LetterListDrinksEvent _value,
      $Res Function(_LetterListDrinksEvent) _then)
      : super(_value, (v) => _then(v as _LetterListDrinksEvent));

  @override
  _LetterListDrinksEvent get _value => super._value as _LetterListDrinksEvent;

  @override
  $Res call({
    Object letter = freezed,
  }) {
    return _then(_LetterListDrinksEvent(
      letter == freezed ? _value.letter : letter as String,
    ));
  }
}

class _$_LetterListDrinksEvent implements _LetterListDrinksEvent {
  const _$_LetterListDrinksEvent(this.letter) : assert(letter != null);

  @override
  final String letter;

  @override
  String toString() {
    return 'LetterListDrinksEvent(letter: $letter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LetterListDrinksEvent &&
            (identical(other.letter, letter) ||
                const DeepCollectionEquality().equals(other.letter, letter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(letter);

  @override
  _$LetterListDrinksEventCopyWith<_LetterListDrinksEvent> get copyWith =>
      __$LetterListDrinksEventCopyWithImpl<_LetterListDrinksEvent>(
          this, _$identity);
}

abstract class _LetterListDrinksEvent implements LetterListDrinksEvent {
  const factory _LetterListDrinksEvent(String letter) =
      _$_LetterListDrinksEvent;

  @override
  String get letter;
  @override
  _$LetterListDrinksEventCopyWith<_LetterListDrinksEvent> get copyWith;
}

class _$LetterListDrinksStateTearOff {
  const _$LetterListDrinksStateTearOff();

  _ViewLetterListDrinksState view(List<Drink> listDrinks) {
    return _ViewLetterListDrinksState(
      listDrinks,
    );
  }

  _InitialLetterListDrinksState initial() {
    return const _InitialLetterListDrinksState();
  }

  _LoadingLetterListDrinksState loading() {
    return const _LoadingLetterListDrinksState();
  }

  _NotFoundLetterListDrinksState notFound() {
    return const _NotFoundLetterListDrinksState();
  }

  _ErrorLetterListDrinksState error({String message}) {
    return _ErrorLetterListDrinksState(
      message: message,
    );
  }
}

// ignore: unused_element
const $LetterListDrinksState = _$LetterListDrinksStateTearOff();

mixin _$LetterListDrinksState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result view(List<Drink> listDrinks),
    @required Result initial(),
    @required Result loading(),
    @required Result notFound(),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result view(List<Drink> listDrinks),
    Result initial(),
    Result loading(),
    Result notFound(),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result view(_ViewLetterListDrinksState value),
    @required Result initial(_InitialLetterListDrinksState value),
    @required Result loading(_LoadingLetterListDrinksState value),
    @required Result notFound(_NotFoundLetterListDrinksState value),
    @required Result error(_ErrorLetterListDrinksState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result view(_ViewLetterListDrinksState value),
    Result initial(_InitialLetterListDrinksState value),
    Result loading(_LoadingLetterListDrinksState value),
    Result notFound(_NotFoundLetterListDrinksState value),
    Result error(_ErrorLetterListDrinksState value),
    @required Result orElse(),
  });
}

abstract class $LetterListDrinksStateCopyWith<$Res> {
  factory $LetterListDrinksStateCopyWith(LetterListDrinksState value,
          $Res Function(LetterListDrinksState) then) =
      _$LetterListDrinksStateCopyWithImpl<$Res>;
}

class _$LetterListDrinksStateCopyWithImpl<$Res>
    implements $LetterListDrinksStateCopyWith<$Res> {
  _$LetterListDrinksStateCopyWithImpl(this._value, this._then);

  final LetterListDrinksState _value;
  // ignore: unused_field
  final $Res Function(LetterListDrinksState) _then;
}

abstract class _$ViewLetterListDrinksStateCopyWith<$Res> {
  factory _$ViewLetterListDrinksStateCopyWith(_ViewLetterListDrinksState value,
          $Res Function(_ViewLetterListDrinksState) then) =
      __$ViewLetterListDrinksStateCopyWithImpl<$Res>;
  $Res call({List<Drink> listDrinks});
}

class __$ViewLetterListDrinksStateCopyWithImpl<$Res>
    extends _$LetterListDrinksStateCopyWithImpl<$Res>
    implements _$ViewLetterListDrinksStateCopyWith<$Res> {
  __$ViewLetterListDrinksStateCopyWithImpl(_ViewLetterListDrinksState _value,
      $Res Function(_ViewLetterListDrinksState) _then)
      : super(_value, (v) => _then(v as _ViewLetterListDrinksState));

  @override
  _ViewLetterListDrinksState get _value =>
      super._value as _ViewLetterListDrinksState;

  @override
  $Res call({
    Object listDrinks = freezed,
  }) {
    return _then(_ViewLetterListDrinksState(
      listDrinks == freezed ? _value.listDrinks : listDrinks as List<Drink>,
    ));
  }
}

class _$_ViewLetterListDrinksState implements _ViewLetterListDrinksState {
  const _$_ViewLetterListDrinksState(this.listDrinks)
      : assert(listDrinks != null);

  @override
  final List<Drink> listDrinks;

  @override
  String toString() {
    return 'LetterListDrinksState.view(listDrinks: $listDrinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewLetterListDrinksState &&
            (identical(other.listDrinks, listDrinks) ||
                const DeepCollectionEquality()
                    .equals(other.listDrinks, listDrinks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listDrinks);

  @override
  _$ViewLetterListDrinksStateCopyWith<_ViewLetterListDrinksState>
      get copyWith =>
          __$ViewLetterListDrinksStateCopyWithImpl<_ViewLetterListDrinksState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result view(List<Drink> listDrinks),
    @required Result initial(),
    @required Result loading(),
    @required Result notFound(),
    @required Result error(String message),
  }) {
    assert(view != null);
    assert(initial != null);
    assert(loading != null);
    assert(notFound != null);
    assert(error != null);
    return view(listDrinks);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result view(List<Drink> listDrinks),
    Result initial(),
    Result loading(),
    Result notFound(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (view != null) {
      return view(listDrinks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result view(_ViewLetterListDrinksState value),
    @required Result initial(_InitialLetterListDrinksState value),
    @required Result loading(_LoadingLetterListDrinksState value),
    @required Result notFound(_NotFoundLetterListDrinksState value),
    @required Result error(_ErrorLetterListDrinksState value),
  }) {
    assert(view != null);
    assert(initial != null);
    assert(loading != null);
    assert(notFound != null);
    assert(error != null);
    return view(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result view(_ViewLetterListDrinksState value),
    Result initial(_InitialLetterListDrinksState value),
    Result loading(_LoadingLetterListDrinksState value),
    Result notFound(_NotFoundLetterListDrinksState value),
    Result error(_ErrorLetterListDrinksState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (view != null) {
      return view(this);
    }
    return orElse();
  }
}

abstract class _ViewLetterListDrinksState implements LetterListDrinksState {
  const factory _ViewLetterListDrinksState(List<Drink> listDrinks) =
      _$_ViewLetterListDrinksState;

  List<Drink> get listDrinks;
  _$ViewLetterListDrinksStateCopyWith<_ViewLetterListDrinksState> get copyWith;
}

abstract class _$InitialLetterListDrinksStateCopyWith<$Res> {
  factory _$InitialLetterListDrinksStateCopyWith(
          _InitialLetterListDrinksState value,
          $Res Function(_InitialLetterListDrinksState) then) =
      __$InitialLetterListDrinksStateCopyWithImpl<$Res>;
}

class __$InitialLetterListDrinksStateCopyWithImpl<$Res>
    extends _$LetterListDrinksStateCopyWithImpl<$Res>
    implements _$InitialLetterListDrinksStateCopyWith<$Res> {
  __$InitialLetterListDrinksStateCopyWithImpl(
      _InitialLetterListDrinksState _value,
      $Res Function(_InitialLetterListDrinksState) _then)
      : super(_value, (v) => _then(v as _InitialLetterListDrinksState));

  @override
  _InitialLetterListDrinksState get _value =>
      super._value as _InitialLetterListDrinksState;
}

class _$_InitialLetterListDrinksState implements _InitialLetterListDrinksState {
  const _$_InitialLetterListDrinksState();

  @override
  String toString() {
    return 'LetterListDrinksState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialLetterListDrinksState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result view(List<Drink> listDrinks),
    @required Result initial(),
    @required Result loading(),
    @required Result notFound(),
    @required Result error(String message),
  }) {
    assert(view != null);
    assert(initial != null);
    assert(loading != null);
    assert(notFound != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result view(List<Drink> listDrinks),
    Result initial(),
    Result loading(),
    Result notFound(),
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
  Result map<Result extends Object>({
    @required Result view(_ViewLetterListDrinksState value),
    @required Result initial(_InitialLetterListDrinksState value),
    @required Result loading(_LoadingLetterListDrinksState value),
    @required Result notFound(_NotFoundLetterListDrinksState value),
    @required Result error(_ErrorLetterListDrinksState value),
  }) {
    assert(view != null);
    assert(initial != null);
    assert(loading != null);
    assert(notFound != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result view(_ViewLetterListDrinksState value),
    Result initial(_InitialLetterListDrinksState value),
    Result loading(_LoadingLetterListDrinksState value),
    Result notFound(_NotFoundLetterListDrinksState value),
    Result error(_ErrorLetterListDrinksState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialLetterListDrinksState implements LetterListDrinksState {
  const factory _InitialLetterListDrinksState() =
      _$_InitialLetterListDrinksState;
}

abstract class _$LoadingLetterListDrinksStateCopyWith<$Res> {
  factory _$LoadingLetterListDrinksStateCopyWith(
          _LoadingLetterListDrinksState value,
          $Res Function(_LoadingLetterListDrinksState) then) =
      __$LoadingLetterListDrinksStateCopyWithImpl<$Res>;
}

class __$LoadingLetterListDrinksStateCopyWithImpl<$Res>
    extends _$LetterListDrinksStateCopyWithImpl<$Res>
    implements _$LoadingLetterListDrinksStateCopyWith<$Res> {
  __$LoadingLetterListDrinksStateCopyWithImpl(
      _LoadingLetterListDrinksState _value,
      $Res Function(_LoadingLetterListDrinksState) _then)
      : super(_value, (v) => _then(v as _LoadingLetterListDrinksState));

  @override
  _LoadingLetterListDrinksState get _value =>
      super._value as _LoadingLetterListDrinksState;
}

class _$_LoadingLetterListDrinksState implements _LoadingLetterListDrinksState {
  const _$_LoadingLetterListDrinksState();

  @override
  String toString() {
    return 'LetterListDrinksState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingLetterListDrinksState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result view(List<Drink> listDrinks),
    @required Result initial(),
    @required Result loading(),
    @required Result notFound(),
    @required Result error(String message),
  }) {
    assert(view != null);
    assert(initial != null);
    assert(loading != null);
    assert(notFound != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result view(List<Drink> listDrinks),
    Result initial(),
    Result loading(),
    Result notFound(),
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
  Result map<Result extends Object>({
    @required Result view(_ViewLetterListDrinksState value),
    @required Result initial(_InitialLetterListDrinksState value),
    @required Result loading(_LoadingLetterListDrinksState value),
    @required Result notFound(_NotFoundLetterListDrinksState value),
    @required Result error(_ErrorLetterListDrinksState value),
  }) {
    assert(view != null);
    assert(initial != null);
    assert(loading != null);
    assert(notFound != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result view(_ViewLetterListDrinksState value),
    Result initial(_InitialLetterListDrinksState value),
    Result loading(_LoadingLetterListDrinksState value),
    Result notFound(_NotFoundLetterListDrinksState value),
    Result error(_ErrorLetterListDrinksState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingLetterListDrinksState implements LetterListDrinksState {
  const factory _LoadingLetterListDrinksState() =
      _$_LoadingLetterListDrinksState;
}

abstract class _$NotFoundLetterListDrinksStateCopyWith<$Res> {
  factory _$NotFoundLetterListDrinksStateCopyWith(
          _NotFoundLetterListDrinksState value,
          $Res Function(_NotFoundLetterListDrinksState) then) =
      __$NotFoundLetterListDrinksStateCopyWithImpl<$Res>;
}

class __$NotFoundLetterListDrinksStateCopyWithImpl<$Res>
    extends _$LetterListDrinksStateCopyWithImpl<$Res>
    implements _$NotFoundLetterListDrinksStateCopyWith<$Res> {
  __$NotFoundLetterListDrinksStateCopyWithImpl(
      _NotFoundLetterListDrinksState _value,
      $Res Function(_NotFoundLetterListDrinksState) _then)
      : super(_value, (v) => _then(v as _NotFoundLetterListDrinksState));

  @override
  _NotFoundLetterListDrinksState get _value =>
      super._value as _NotFoundLetterListDrinksState;
}

class _$_NotFoundLetterListDrinksState
    implements _NotFoundLetterListDrinksState {
  const _$_NotFoundLetterListDrinksState();

  @override
  String toString() {
    return 'LetterListDrinksState.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotFoundLetterListDrinksState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result view(List<Drink> listDrinks),
    @required Result initial(),
    @required Result loading(),
    @required Result notFound(),
    @required Result error(String message),
  }) {
    assert(view != null);
    assert(initial != null);
    assert(loading != null);
    assert(notFound != null);
    assert(error != null);
    return notFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result view(List<Drink> listDrinks),
    Result initial(),
    Result loading(),
    Result notFound(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result view(_ViewLetterListDrinksState value),
    @required Result initial(_InitialLetterListDrinksState value),
    @required Result loading(_LoadingLetterListDrinksState value),
    @required Result notFound(_NotFoundLetterListDrinksState value),
    @required Result error(_ErrorLetterListDrinksState value),
  }) {
    assert(view != null);
    assert(initial != null);
    assert(loading != null);
    assert(notFound != null);
    assert(error != null);
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result view(_ViewLetterListDrinksState value),
    Result initial(_InitialLetterListDrinksState value),
    Result loading(_LoadingLetterListDrinksState value),
    Result notFound(_NotFoundLetterListDrinksState value),
    Result error(_ErrorLetterListDrinksState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFoundLetterListDrinksState implements LetterListDrinksState {
  const factory _NotFoundLetterListDrinksState() =
      _$_NotFoundLetterListDrinksState;
}

abstract class _$ErrorLetterListDrinksStateCopyWith<$Res> {
  factory _$ErrorLetterListDrinksStateCopyWith(
          _ErrorLetterListDrinksState value,
          $Res Function(_ErrorLetterListDrinksState) then) =
      __$ErrorLetterListDrinksStateCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$ErrorLetterListDrinksStateCopyWithImpl<$Res>
    extends _$LetterListDrinksStateCopyWithImpl<$Res>
    implements _$ErrorLetterListDrinksStateCopyWith<$Res> {
  __$ErrorLetterListDrinksStateCopyWithImpl(_ErrorLetterListDrinksState _value,
      $Res Function(_ErrorLetterListDrinksState) _then)
      : super(_value, (v) => _then(v as _ErrorLetterListDrinksState));

  @override
  _ErrorLetterListDrinksState get _value =>
      super._value as _ErrorLetterListDrinksState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ErrorLetterListDrinksState(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_ErrorLetterListDrinksState implements _ErrorLetterListDrinksState {
  const _$_ErrorLetterListDrinksState({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LetterListDrinksState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorLetterListDrinksState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$ErrorLetterListDrinksStateCopyWith<_ErrorLetterListDrinksState>
      get copyWith => __$ErrorLetterListDrinksStateCopyWithImpl<
          _ErrorLetterListDrinksState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result view(List<Drink> listDrinks),
    @required Result initial(),
    @required Result loading(),
    @required Result notFound(),
    @required Result error(String message),
  }) {
    assert(view != null);
    assert(initial != null);
    assert(loading != null);
    assert(notFound != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result view(List<Drink> listDrinks),
    Result initial(),
    Result loading(),
    Result notFound(),
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
  Result map<Result extends Object>({
    @required Result view(_ViewLetterListDrinksState value),
    @required Result initial(_InitialLetterListDrinksState value),
    @required Result loading(_LoadingLetterListDrinksState value),
    @required Result notFound(_NotFoundLetterListDrinksState value),
    @required Result error(_ErrorLetterListDrinksState value),
  }) {
    assert(view != null);
    assert(initial != null);
    assert(loading != null);
    assert(notFound != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result view(_ViewLetterListDrinksState value),
    Result initial(_InitialLetterListDrinksState value),
    Result loading(_LoadingLetterListDrinksState value),
    Result notFound(_NotFoundLetterListDrinksState value),
    Result error(_ErrorLetterListDrinksState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorLetterListDrinksState implements LetterListDrinksState {
  const factory _ErrorLetterListDrinksState({String message}) =
      _$_ErrorLetterListDrinksState;

  String get message;
  _$ErrorLetterListDrinksStateCopyWith<_ErrorLetterListDrinksState>
      get copyWith;
}
