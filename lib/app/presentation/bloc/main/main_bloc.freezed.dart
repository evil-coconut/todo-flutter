// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTasks,
    required TResult Function(MainNavigationType e) navigationTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTasks,
    TResult? Function(MainNavigationType e)? navigationTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTasks,
    TResult Function(MainNavigationType e)? navigationTo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_NavigationTo value) navigationTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_NavigationTo value)? navigationTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_NavigationTo value)? navigationTo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTasksImplCopyWith<$Res> {
  factory _$$GetTasksImplCopyWith(
          _$GetTasksImpl value, $Res Function(_$GetTasksImpl) then) =
      __$$GetTasksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTasksImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$GetTasksImpl>
    implements _$$GetTasksImplCopyWith<$Res> {
  __$$GetTasksImplCopyWithImpl(
      _$GetTasksImpl _value, $Res Function(_$GetTasksImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetTasksImpl implements _GetTasks {
  const _$GetTasksImpl();

  @override
  String toString() {
    return 'MainEvent.getTasks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTasksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTasks,
    required TResult Function(MainNavigationType e) navigationTo,
  }) {
    return getTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTasks,
    TResult? Function(MainNavigationType e)? navigationTo,
  }) {
    return getTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTasks,
    TResult Function(MainNavigationType e)? navigationTo,
    required TResult orElse(),
  }) {
    if (getTasks != null) {
      return getTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_NavigationTo value) navigationTo,
  }) {
    return getTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_NavigationTo value)? navigationTo,
  }) {
    return getTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_NavigationTo value)? navigationTo,
    required TResult orElse(),
  }) {
    if (getTasks != null) {
      return getTasks(this);
    }
    return orElse();
  }
}

abstract class _GetTasks implements MainEvent {
  const factory _GetTasks() = _$GetTasksImpl;
}

/// @nodoc
abstract class _$$NavigationToImplCopyWith<$Res> {
  factory _$$NavigationToImplCopyWith(
          _$NavigationToImpl value, $Res Function(_$NavigationToImpl) then) =
      __$$NavigationToImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MainNavigationType e});
}

/// @nodoc
class __$$NavigationToImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$NavigationToImpl>
    implements _$$NavigationToImplCopyWith<$Res> {
  __$$NavigationToImplCopyWithImpl(
      _$NavigationToImpl _value, $Res Function(_$NavigationToImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$NavigationToImpl(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as MainNavigationType,
    ));
  }
}

/// @nodoc

class _$NavigationToImpl implements _NavigationTo {
  const _$NavigationToImpl(this.e);

  @override
  final MainNavigationType e;

  @override
  String toString() {
    return 'MainEvent.navigationTo(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationToImpl &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationToImplCopyWith<_$NavigationToImpl> get copyWith =>
      __$$NavigationToImplCopyWithImpl<_$NavigationToImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTasks,
    required TResult Function(MainNavigationType e) navigationTo,
  }) {
    return navigationTo(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTasks,
    TResult? Function(MainNavigationType e)? navigationTo,
  }) {
    return navigationTo?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTasks,
    TResult Function(MainNavigationType e)? navigationTo,
    required TResult orElse(),
  }) {
    if (navigationTo != null) {
      return navigationTo(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_NavigationTo value) navigationTo,
  }) {
    return navigationTo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_NavigationTo value)? navigationTo,
  }) {
    return navigationTo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_NavigationTo value)? navigationTo,
    required TResult orElse(),
  }) {
    if (navigationTo != null) {
      return navigationTo(this);
    }
    return orElse();
  }
}

abstract class _NavigationTo implements MainEvent {
  const factory _NavigationTo(final MainNavigationType e) = _$NavigationToImpl;

  MainNavigationType get e;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigationToImplCopyWith<_$NavigationToImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  dynamic get corePage => throw _privateConstructorUsedError;
  MainTasksListData? get tasks => throw _privateConstructorUsedError;
  int? get error => throw _privateConstructorUsedError;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call({dynamic corePage, MainTasksListData? tasks, int? error});
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? corePage = freezed,
    Object? tasks = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      corePage: freezed == corePage
          ? _value.corePage
          : corePage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tasks: freezed == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as MainTasksListData?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainStateImplCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory _$$MainStateImplCopyWith(
          _$MainStateImpl value, $Res Function(_$MainStateImpl) then) =
      __$$MainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic corePage, MainTasksListData? tasks, int? error});
}

/// @nodoc
class __$$MainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateImpl>
    implements _$$MainStateImplCopyWith<$Res> {
  __$$MainStateImplCopyWithImpl(
      _$MainStateImpl _value, $Res Function(_$MainStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? corePage = freezed,
    Object? tasks = freezed,
    Object? error = freezed,
  }) {
    return _then(_$MainStateImpl(
      corePage: freezed == corePage ? _value.corePage! : corePage,
      tasks: freezed == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as MainTasksListData?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$MainStateImpl implements _MainState {
  const _$MainStateImpl(
      {this.corePage = MainNavigationType.tasks, this.tasks, this.error});

  @override
  @JsonKey()
  final dynamic corePage;
  @override
  final MainTasksListData? tasks;
  @override
  final int? error;

  @override
  String toString() {
    return 'MainState(corePage: $corePage, tasks: $tasks, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateImpl &&
            const DeepCollectionEquality().equals(other.corePage, corePage) &&
            (identical(other.tasks, tasks) || other.tasks == tasks) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(corePage), tasks, error);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      __$$MainStateImplCopyWithImpl<_$MainStateImpl>(this, _$identity);
}

abstract class _MainState implements MainState {
  const factory _MainState(
      {final dynamic corePage,
      final MainTasksListData? tasks,
      final int? error}) = _$MainStateImpl;

  @override
  dynamic get corePage;
  @override
  MainTasksListData? get tasks;
  @override
  int? get error;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
