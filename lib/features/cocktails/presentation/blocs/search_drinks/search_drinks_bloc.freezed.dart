// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'search_drinks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchDrinksEventTearOff {
  const _$SearchDrinksEventTearOff();

  _SearchDrinksEvent search(String search) {
    return _SearchDrinksEvent(
      search,
    );
  }
}

// ignore: unused_element
const $SearchDrinksEvent = _$SearchDrinksEventTearOff();

mixin _$SearchDrinksEvent {
  String get search;

  $SearchDrinksEventCopyWith<SearchDrinksEvent> get copyWith;
}

abstract class $SearchDrinksEventCopyWith<$Res> {
  factory $SearchDrinksEventCopyWith(
          SearchDrinksEvent value, $Res Function(SearchDrinksEvent) then) =
      _$SearchDrinksEventCopyWithImpl<$Res>;
  $Res call({String search});
}

class _$SearchDrinksEventCopyWithImpl<$Res>
    implements $SearchDrinksEventCopyWith<$Res> {
  _$SearchDrinksEventCopyWithImpl(this._value, this._then);

  final SearchDrinksEvent _value;
  // ignore: unused_field
  final $Res Function(SearchDrinksEvent) _then;

  @override
  $Res call({
    Object search = freezed,
  }) {
    return _then(_value.copyWith(
      search: search == freezed ? _value.search : search as String,
    ));
  }
}

abstract class _$SearchDrinksEventCopyWith<$Res>
    implements $SearchDrinksEventCopyWith<$Res> {
  factory _$SearchDrinksEventCopyWith(
          _SearchDrinksEvent value, $Res Function(_SearchDrinksEvent) then) =
      __$SearchDrinksEventCopyWithImpl<$Res>;
  @override
  $Res call({String search});
}

class __$SearchDrinksEventCopyWithImpl<$Res>
    extends _$SearchDrinksEventCopyWithImpl<$Res>
    implements _$SearchDrinksEventCopyWith<$Res> {
  __$SearchDrinksEventCopyWithImpl(
      _SearchDrinksEvent _value, $Res Function(_SearchDrinksEvent) _then)
      : super(_value, (v) => _then(v as _SearchDrinksEvent));

  @override
  _SearchDrinksEvent get _value => super._value as _SearchDrinksEvent;

  @override
  $Res call({
    Object search = freezed,
  }) {
    return _then(_SearchDrinksEvent(
      search == freezed ? _value.search : search as String,
    ));
  }
}

class _$_SearchDrinksEvent
    with DiagnosticableTreeMixin
    implements _SearchDrinksEvent {
  const _$_SearchDrinksEvent(this.search) : assert(search != null);

  @override
  final String search;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchDrinksEvent.search(search: $search)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchDrinksEvent.search'))
      ..add(DiagnosticsProperty('search', search));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchDrinksEvent &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(search);

  @override
  _$SearchDrinksEventCopyWith<_SearchDrinksEvent> get copyWith =>
      __$SearchDrinksEventCopyWithImpl<_SearchDrinksEvent>(this, _$identity);
}

abstract class _SearchDrinksEvent implements SearchDrinksEvent {
  const factory _SearchDrinksEvent(String search) = _$_SearchDrinksEvent;

  @override
  String get search;
  @override
  _$SearchDrinksEventCopyWith<_SearchDrinksEvent> get copyWith;
}

class _$SearchDrinksStateTearOff {
  const _$SearchDrinksStateTearOff();

  _InitialSearchDrinksState initial() {
    return const _InitialSearchDrinksState();
  }

  _LoadingSearchDrinksState loading() {
    return const _LoadingSearchDrinksState();
  }

  _ViewSearchDrinksState view(List<Drink> listDrinks) {
    return _ViewSearchDrinksState(
      listDrinks,
    );
  }

  _EmptySearchDrinksState searchTextEmpty() {
    return const _EmptySearchDrinksState();
  }

  _NotFoundSearchDrinksState notFound() {
    return const _NotFoundSearchDrinksState();
  }

  _ErrorSearchDrinksState error({String message}) {
    return _ErrorSearchDrinksState(
      message: message,
    );
  }
}

// ignore: unused_element
const $SearchDrinksState = _$SearchDrinksStateTearOff();

mixin _$SearchDrinksState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result view(List<Drink> listDrinks),
    @required Result searchTextEmpty(),
    @required Result notFound(),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result view(List<Drink> listDrinks),
    Result searchTextEmpty(),
    Result notFound(),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialSearchDrinksState value),
    @required Result loading(_LoadingSearchDrinksState value),
    @required Result view(_ViewSearchDrinksState value),
    @required Result searchTextEmpty(_EmptySearchDrinksState value),
    @required Result notFound(_NotFoundSearchDrinksState value),
    @required Result error(_ErrorSearchDrinksState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialSearchDrinksState value),
    Result loading(_LoadingSearchDrinksState value),
    Result view(_ViewSearchDrinksState value),
    Result searchTextEmpty(_EmptySearchDrinksState value),
    Result notFound(_NotFoundSearchDrinksState value),
    Result error(_ErrorSearchDrinksState value),
    @required Result orElse(),
  });
}

abstract class $SearchDrinksStateCopyWith<$Res> {
  factory $SearchDrinksStateCopyWith(
          SearchDrinksState value, $Res Function(SearchDrinksState) then) =
      _$SearchDrinksStateCopyWithImpl<$Res>;
}

class _$SearchDrinksStateCopyWithImpl<$Res>
    implements $SearchDrinksStateCopyWith<$Res> {
  _$SearchDrinksStateCopyWithImpl(this._value, this._then);

  final SearchDrinksState _value;
  // ignore: unused_field
  final $Res Function(SearchDrinksState) _then;
}

abstract class _$InitialSearchDrinksStateCopyWith<$Res> {
  factory _$InitialSearchDrinksStateCopyWith(_InitialSearchDrinksState value,
          $Res Function(_InitialSearchDrinksState) then) =
      __$InitialSearchDrinksStateCopyWithImpl<$Res>;
}

class __$InitialSearchDrinksStateCopyWithImpl<$Res>
    extends _$SearchDrinksStateCopyWithImpl<$Res>
    implements _$InitialSearchDrinksStateCopyWith<$Res> {
  __$InitialSearchDrinksStateCopyWithImpl(_InitialSearchDrinksState _value,
      $Res Function(_InitialSearchDrinksState) _then)
      : super(_value, (v) => _then(v as _InitialSearchDrinksState));

  @override
  _InitialSearchDrinksState get _value =>
      super._value as _InitialSearchDrinksState;
}

class _$_InitialSearchDrinksState
    with DiagnosticableTreeMixin
    implements _InitialSearchDrinksState {
  const _$_InitialSearchDrinksState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchDrinksState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SearchDrinksState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialSearchDrinksState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result view(List<Drink> listDrinks),
    @required Result searchTextEmpty(),
    @required Result notFound(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(searchTextEmpty != null);
    assert(notFound != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result view(List<Drink> listDrinks),
    Result searchTextEmpty(),
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
    @required Result initial(_InitialSearchDrinksState value),
    @required Result loading(_LoadingSearchDrinksState value),
    @required Result view(_ViewSearchDrinksState value),
    @required Result searchTextEmpty(_EmptySearchDrinksState value),
    @required Result notFound(_NotFoundSearchDrinksState value),
    @required Result error(_ErrorSearchDrinksState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(searchTextEmpty != null);
    assert(notFound != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialSearchDrinksState value),
    Result loading(_LoadingSearchDrinksState value),
    Result view(_ViewSearchDrinksState value),
    Result searchTextEmpty(_EmptySearchDrinksState value),
    Result notFound(_NotFoundSearchDrinksState value),
    Result error(_ErrorSearchDrinksState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSearchDrinksState implements SearchDrinksState {
  const factory _InitialSearchDrinksState() = _$_InitialSearchDrinksState;
}

abstract class _$LoadingSearchDrinksStateCopyWith<$Res> {
  factory _$LoadingSearchDrinksStateCopyWith(_LoadingSearchDrinksState value,
          $Res Function(_LoadingSearchDrinksState) then) =
      __$LoadingSearchDrinksStateCopyWithImpl<$Res>;
}

class __$LoadingSearchDrinksStateCopyWithImpl<$Res>
    extends _$SearchDrinksStateCopyWithImpl<$Res>
    implements _$LoadingSearchDrinksStateCopyWith<$Res> {
  __$LoadingSearchDrinksStateCopyWithImpl(_LoadingSearchDrinksState _value,
      $Res Function(_LoadingSearchDrinksState) _then)
      : super(_value, (v) => _then(v as _LoadingSearchDrinksState));

  @override
  _LoadingSearchDrinksState get _value =>
      super._value as _LoadingSearchDrinksState;
}

class _$_LoadingSearchDrinksState
    with DiagnosticableTreeMixin
    implements _LoadingSearchDrinksState {
  const _$_LoadingSearchDrinksState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchDrinksState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SearchDrinksState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingSearchDrinksState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result view(List<Drink> listDrinks),
    @required Result searchTextEmpty(),
    @required Result notFound(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(searchTextEmpty != null);
    assert(notFound != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result view(List<Drink> listDrinks),
    Result searchTextEmpty(),
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
    @required Result initial(_InitialSearchDrinksState value),
    @required Result loading(_LoadingSearchDrinksState value),
    @required Result view(_ViewSearchDrinksState value),
    @required Result searchTextEmpty(_EmptySearchDrinksState value),
    @required Result notFound(_NotFoundSearchDrinksState value),
    @required Result error(_ErrorSearchDrinksState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(searchTextEmpty != null);
    assert(notFound != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialSearchDrinksState value),
    Result loading(_LoadingSearchDrinksState value),
    Result view(_ViewSearchDrinksState value),
    Result searchTextEmpty(_EmptySearchDrinksState value),
    Result notFound(_NotFoundSearchDrinksState value),
    Result error(_ErrorSearchDrinksState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingSearchDrinksState implements SearchDrinksState {
  const factory _LoadingSearchDrinksState() = _$_LoadingSearchDrinksState;
}

abstract class _$ViewSearchDrinksStateCopyWith<$Res> {
  factory _$ViewSearchDrinksStateCopyWith(_ViewSearchDrinksState value,
          $Res Function(_ViewSearchDrinksState) then) =
      __$ViewSearchDrinksStateCopyWithImpl<$Res>;
  $Res call({List<Drink> listDrinks});
}

class __$ViewSearchDrinksStateCopyWithImpl<$Res>
    extends _$SearchDrinksStateCopyWithImpl<$Res>
    implements _$ViewSearchDrinksStateCopyWith<$Res> {
  __$ViewSearchDrinksStateCopyWithImpl(_ViewSearchDrinksState _value,
      $Res Function(_ViewSearchDrinksState) _then)
      : super(_value, (v) => _then(v as _ViewSearchDrinksState));

  @override
  _ViewSearchDrinksState get _value => super._value as _ViewSearchDrinksState;

  @override
  $Res call({
    Object listDrinks = freezed,
  }) {
    return _then(_ViewSearchDrinksState(
      listDrinks == freezed ? _value.listDrinks : listDrinks as List<Drink>,
    ));
  }
}

class _$_ViewSearchDrinksState
    with DiagnosticableTreeMixin
    implements _ViewSearchDrinksState {
  const _$_ViewSearchDrinksState(this.listDrinks) : assert(listDrinks != null);

  @override
  final List<Drink> listDrinks;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchDrinksState.view(listDrinks: $listDrinks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchDrinksState.view'))
      ..add(DiagnosticsProperty('listDrinks', listDrinks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewSearchDrinksState &&
            (identical(other.listDrinks, listDrinks) ||
                const DeepCollectionEquality()
                    .equals(other.listDrinks, listDrinks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listDrinks);

  @override
  _$ViewSearchDrinksStateCopyWith<_ViewSearchDrinksState> get copyWith =>
      __$ViewSearchDrinksStateCopyWithImpl<_ViewSearchDrinksState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result view(List<Drink> listDrinks),
    @required Result searchTextEmpty(),
    @required Result notFound(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(searchTextEmpty != null);
    assert(notFound != null);
    assert(error != null);
    return view(listDrinks);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result view(List<Drink> listDrinks),
    Result searchTextEmpty(),
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
    @required Result initial(_InitialSearchDrinksState value),
    @required Result loading(_LoadingSearchDrinksState value),
    @required Result view(_ViewSearchDrinksState value),
    @required Result searchTextEmpty(_EmptySearchDrinksState value),
    @required Result notFound(_NotFoundSearchDrinksState value),
    @required Result error(_ErrorSearchDrinksState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(searchTextEmpty != null);
    assert(notFound != null);
    assert(error != null);
    return view(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialSearchDrinksState value),
    Result loading(_LoadingSearchDrinksState value),
    Result view(_ViewSearchDrinksState value),
    Result searchTextEmpty(_EmptySearchDrinksState value),
    Result notFound(_NotFoundSearchDrinksState value),
    Result error(_ErrorSearchDrinksState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (view != null) {
      return view(this);
    }
    return orElse();
  }
}

abstract class _ViewSearchDrinksState implements SearchDrinksState {
  const factory _ViewSearchDrinksState(List<Drink> listDrinks) =
      _$_ViewSearchDrinksState;

  List<Drink> get listDrinks;
  _$ViewSearchDrinksStateCopyWith<_ViewSearchDrinksState> get copyWith;
}

abstract class _$EmptySearchDrinksStateCopyWith<$Res> {
  factory _$EmptySearchDrinksStateCopyWith(_EmptySearchDrinksState value,
          $Res Function(_EmptySearchDrinksState) then) =
      __$EmptySearchDrinksStateCopyWithImpl<$Res>;
}

class __$EmptySearchDrinksStateCopyWithImpl<$Res>
    extends _$SearchDrinksStateCopyWithImpl<$Res>
    implements _$EmptySearchDrinksStateCopyWith<$Res> {
  __$EmptySearchDrinksStateCopyWithImpl(_EmptySearchDrinksState _value,
      $Res Function(_EmptySearchDrinksState) _then)
      : super(_value, (v) => _then(v as _EmptySearchDrinksState));

  @override
  _EmptySearchDrinksState get _value => super._value as _EmptySearchDrinksState;
}

class _$_EmptySearchDrinksState
    with DiagnosticableTreeMixin
    implements _EmptySearchDrinksState {
  const _$_EmptySearchDrinksState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchDrinksState.searchTextEmpty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchDrinksState.searchTextEmpty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EmptySearchDrinksState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result view(List<Drink> listDrinks),
    @required Result searchTextEmpty(),
    @required Result notFound(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(searchTextEmpty != null);
    assert(notFound != null);
    assert(error != null);
    return searchTextEmpty();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result view(List<Drink> listDrinks),
    Result searchTextEmpty(),
    Result notFound(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchTextEmpty != null) {
      return searchTextEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialSearchDrinksState value),
    @required Result loading(_LoadingSearchDrinksState value),
    @required Result view(_ViewSearchDrinksState value),
    @required Result searchTextEmpty(_EmptySearchDrinksState value),
    @required Result notFound(_NotFoundSearchDrinksState value),
    @required Result error(_ErrorSearchDrinksState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(searchTextEmpty != null);
    assert(notFound != null);
    assert(error != null);
    return searchTextEmpty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialSearchDrinksState value),
    Result loading(_LoadingSearchDrinksState value),
    Result view(_ViewSearchDrinksState value),
    Result searchTextEmpty(_EmptySearchDrinksState value),
    Result notFound(_NotFoundSearchDrinksState value),
    Result error(_ErrorSearchDrinksState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchTextEmpty != null) {
      return searchTextEmpty(this);
    }
    return orElse();
  }
}

abstract class _EmptySearchDrinksState implements SearchDrinksState {
  const factory _EmptySearchDrinksState() = _$_EmptySearchDrinksState;
}

abstract class _$NotFoundSearchDrinksStateCopyWith<$Res> {
  factory _$NotFoundSearchDrinksStateCopyWith(_NotFoundSearchDrinksState value,
          $Res Function(_NotFoundSearchDrinksState) then) =
      __$NotFoundSearchDrinksStateCopyWithImpl<$Res>;
}

class __$NotFoundSearchDrinksStateCopyWithImpl<$Res>
    extends _$SearchDrinksStateCopyWithImpl<$Res>
    implements _$NotFoundSearchDrinksStateCopyWith<$Res> {
  __$NotFoundSearchDrinksStateCopyWithImpl(_NotFoundSearchDrinksState _value,
      $Res Function(_NotFoundSearchDrinksState) _then)
      : super(_value, (v) => _then(v as _NotFoundSearchDrinksState));

  @override
  _NotFoundSearchDrinksState get _value =>
      super._value as _NotFoundSearchDrinksState;
}

class _$_NotFoundSearchDrinksState
    with DiagnosticableTreeMixin
    implements _NotFoundSearchDrinksState {
  const _$_NotFoundSearchDrinksState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchDrinksState.notFound()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SearchDrinksState.notFound'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotFoundSearchDrinksState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result view(List<Drink> listDrinks),
    @required Result searchTextEmpty(),
    @required Result notFound(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(searchTextEmpty != null);
    assert(notFound != null);
    assert(error != null);
    return notFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result view(List<Drink> listDrinks),
    Result searchTextEmpty(),
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
    @required Result initial(_InitialSearchDrinksState value),
    @required Result loading(_LoadingSearchDrinksState value),
    @required Result view(_ViewSearchDrinksState value),
    @required Result searchTextEmpty(_EmptySearchDrinksState value),
    @required Result notFound(_NotFoundSearchDrinksState value),
    @required Result error(_ErrorSearchDrinksState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(searchTextEmpty != null);
    assert(notFound != null);
    assert(error != null);
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialSearchDrinksState value),
    Result loading(_LoadingSearchDrinksState value),
    Result view(_ViewSearchDrinksState value),
    Result searchTextEmpty(_EmptySearchDrinksState value),
    Result notFound(_NotFoundSearchDrinksState value),
    Result error(_ErrorSearchDrinksState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFoundSearchDrinksState implements SearchDrinksState {
  const factory _NotFoundSearchDrinksState() = _$_NotFoundSearchDrinksState;
}

abstract class _$ErrorSearchDrinksStateCopyWith<$Res> {
  factory _$ErrorSearchDrinksStateCopyWith(_ErrorSearchDrinksState value,
          $Res Function(_ErrorSearchDrinksState) then) =
      __$ErrorSearchDrinksStateCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$ErrorSearchDrinksStateCopyWithImpl<$Res>
    extends _$SearchDrinksStateCopyWithImpl<$Res>
    implements _$ErrorSearchDrinksStateCopyWith<$Res> {
  __$ErrorSearchDrinksStateCopyWithImpl(_ErrorSearchDrinksState _value,
      $Res Function(_ErrorSearchDrinksState) _then)
      : super(_value, (v) => _then(v as _ErrorSearchDrinksState));

  @override
  _ErrorSearchDrinksState get _value => super._value as _ErrorSearchDrinksState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ErrorSearchDrinksState(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_ErrorSearchDrinksState
    with DiagnosticableTreeMixin
    implements _ErrorSearchDrinksState {
  const _$_ErrorSearchDrinksState({this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchDrinksState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchDrinksState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorSearchDrinksState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$ErrorSearchDrinksStateCopyWith<_ErrorSearchDrinksState> get copyWith =>
      __$ErrorSearchDrinksStateCopyWithImpl<_ErrorSearchDrinksState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result view(List<Drink> listDrinks),
    @required Result searchTextEmpty(),
    @required Result notFound(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(searchTextEmpty != null);
    assert(notFound != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result view(List<Drink> listDrinks),
    Result searchTextEmpty(),
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
    @required Result initial(_InitialSearchDrinksState value),
    @required Result loading(_LoadingSearchDrinksState value),
    @required Result view(_ViewSearchDrinksState value),
    @required Result searchTextEmpty(_EmptySearchDrinksState value),
    @required Result notFound(_NotFoundSearchDrinksState value),
    @required Result error(_ErrorSearchDrinksState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(view != null);
    assert(searchTextEmpty != null);
    assert(notFound != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialSearchDrinksState value),
    Result loading(_LoadingSearchDrinksState value),
    Result view(_ViewSearchDrinksState value),
    Result searchTextEmpty(_EmptySearchDrinksState value),
    Result notFound(_NotFoundSearchDrinksState value),
    Result error(_ErrorSearchDrinksState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSearchDrinksState implements SearchDrinksState {
  const factory _ErrorSearchDrinksState({String message}) =
      _$_ErrorSearchDrinksState;

  String get message;
  _$ErrorSearchDrinksStateCopyWith<_ErrorSearchDrinksState> get copyWith;
}
