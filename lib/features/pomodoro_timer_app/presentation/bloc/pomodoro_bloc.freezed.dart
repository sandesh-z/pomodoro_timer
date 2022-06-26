// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pomodoro_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PomodoroEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loding,
    required TResult Function() loaded,
    required TResult Function() started,
    required TResult Function(Duration decrementValue) decrement,
    required TResult Function(Duration resetValue) resetPressed,
    required TResult Function(Duration setValue) setTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loding,
    TResult Function()? loaded,
    TResult Function()? started,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loding,
    TResult Function()? loaded,
    TResult Function()? started,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroTimerLoading value) loding,
    required TResult Function(PomodoroTimerLoaded value) loaded,
    required TResult Function(PomodoroTimerStarted value) started,
    required TResult Function(PomodoroTimerDecrementPressed value) decrement,
    required TResult Function(PomodoroTimerResetPressed value) resetPressed,
    required TResult Function(TimerTypeChanged value) setTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PomodoroTimerLoading value)? loding,
    TResult Function(PomodoroTimerLoaded value)? loaded,
    TResult Function(PomodoroTimerStarted value)? started,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroTimerLoading value)? loding,
    TResult Function(PomodoroTimerLoaded value)? loaded,
    TResult Function(PomodoroTimerStarted value)? started,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroEventCopyWith<$Res> {
  factory $PomodoroEventCopyWith(
          PomodoroEvent value, $Res Function(PomodoroEvent) then) =
      _$PomodoroEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PomodoroEventCopyWithImpl<$Res>
    implements $PomodoroEventCopyWith<$Res> {
  _$PomodoroEventCopyWithImpl(this._value, this._then);

  final PomodoroEvent _value;
  // ignore: unused_field
  final $Res Function(PomodoroEvent) _then;
}

/// @nodoc
abstract class _$$PomodoroTimerLoadingCopyWith<$Res> {
  factory _$$PomodoroTimerLoadingCopyWith(_$PomodoroTimerLoading value,
          $Res Function(_$PomodoroTimerLoading) then) =
      __$$PomodoroTimerLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PomodoroTimerLoadingCopyWithImpl<$Res>
    extends _$PomodoroEventCopyWithImpl<$Res>
    implements _$$PomodoroTimerLoadingCopyWith<$Res> {
  __$$PomodoroTimerLoadingCopyWithImpl(_$PomodoroTimerLoading _value,
      $Res Function(_$PomodoroTimerLoading) _then)
      : super(_value, (v) => _then(v as _$PomodoroTimerLoading));

  @override
  _$PomodoroTimerLoading get _value => super._value as _$PomodoroTimerLoading;
}

/// @nodoc

class _$PomodoroTimerLoading
    with DiagnosticableTreeMixin
    implements PomodoroTimerLoading {
  const _$PomodoroTimerLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroEvent.loding()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PomodoroEvent.loding'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PomodoroTimerLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loding,
    required TResult Function() loaded,
    required TResult Function() started,
    required TResult Function(Duration decrementValue) decrement,
    required TResult Function(Duration resetValue) resetPressed,
    required TResult Function(Duration setValue) setTimerType,
  }) {
    return loding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loding,
    TResult Function()? loaded,
    TResult Function()? started,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
  }) {
    return loding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loding,
    TResult Function()? loaded,
    TResult Function()? started,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
    required TResult orElse(),
  }) {
    if (loding != null) {
      return loding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroTimerLoading value) loding,
    required TResult Function(PomodoroTimerLoaded value) loaded,
    required TResult Function(PomodoroTimerStarted value) started,
    required TResult Function(PomodoroTimerDecrementPressed value) decrement,
    required TResult Function(PomodoroTimerResetPressed value) resetPressed,
    required TResult Function(TimerTypeChanged value) setTimerType,
  }) {
    return loding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PomodoroTimerLoading value)? loding,
    TResult Function(PomodoroTimerLoaded value)? loaded,
    TResult Function(PomodoroTimerStarted value)? started,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
  }) {
    return loding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroTimerLoading value)? loding,
    TResult Function(PomodoroTimerLoaded value)? loaded,
    TResult Function(PomodoroTimerStarted value)? started,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
    required TResult orElse(),
  }) {
    if (loding != null) {
      return loding(this);
    }
    return orElse();
  }
}

abstract class PomodoroTimerLoading implements PomodoroEvent {
  const factory PomodoroTimerLoading() = _$PomodoroTimerLoading;
}

/// @nodoc
abstract class _$$PomodoroTimerLoadedCopyWith<$Res> {
  factory _$$PomodoroTimerLoadedCopyWith(_$PomodoroTimerLoaded value,
          $Res Function(_$PomodoroTimerLoaded) then) =
      __$$PomodoroTimerLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PomodoroTimerLoadedCopyWithImpl<$Res>
    extends _$PomodoroEventCopyWithImpl<$Res>
    implements _$$PomodoroTimerLoadedCopyWith<$Res> {
  __$$PomodoroTimerLoadedCopyWithImpl(
      _$PomodoroTimerLoaded _value, $Res Function(_$PomodoroTimerLoaded) _then)
      : super(_value, (v) => _then(v as _$PomodoroTimerLoaded));

  @override
  _$PomodoroTimerLoaded get _value => super._value as _$PomodoroTimerLoaded;
}

/// @nodoc

class _$PomodoroTimerLoaded
    with DiagnosticableTreeMixin
    implements PomodoroTimerLoaded {
  const _$PomodoroTimerLoaded();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroEvent.loaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PomodoroEvent.loaded'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PomodoroTimerLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loding,
    required TResult Function() loaded,
    required TResult Function() started,
    required TResult Function(Duration decrementValue) decrement,
    required TResult Function(Duration resetValue) resetPressed,
    required TResult Function(Duration setValue) setTimerType,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loding,
    TResult Function()? loaded,
    TResult Function()? started,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loding,
    TResult Function()? loaded,
    TResult Function()? started,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroTimerLoading value) loding,
    required TResult Function(PomodoroTimerLoaded value) loaded,
    required TResult Function(PomodoroTimerStarted value) started,
    required TResult Function(PomodoroTimerDecrementPressed value) decrement,
    required TResult Function(PomodoroTimerResetPressed value) resetPressed,
    required TResult Function(TimerTypeChanged value) setTimerType,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PomodoroTimerLoading value)? loding,
    TResult Function(PomodoroTimerLoaded value)? loaded,
    TResult Function(PomodoroTimerStarted value)? started,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroTimerLoading value)? loding,
    TResult Function(PomodoroTimerLoaded value)? loaded,
    TResult Function(PomodoroTimerStarted value)? started,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PomodoroTimerLoaded implements PomodoroEvent {
  const factory PomodoroTimerLoaded() = _$PomodoroTimerLoaded;
}

/// @nodoc
abstract class _$$PomodoroTimerStartedCopyWith<$Res> {
  factory _$$PomodoroTimerStartedCopyWith(_$PomodoroTimerStarted value,
          $Res Function(_$PomodoroTimerStarted) then) =
      __$$PomodoroTimerStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PomodoroTimerStartedCopyWithImpl<$Res>
    extends _$PomodoroEventCopyWithImpl<$Res>
    implements _$$PomodoroTimerStartedCopyWith<$Res> {
  __$$PomodoroTimerStartedCopyWithImpl(_$PomodoroTimerStarted _value,
      $Res Function(_$PomodoroTimerStarted) _then)
      : super(_value, (v) => _then(v as _$PomodoroTimerStarted));

  @override
  _$PomodoroTimerStarted get _value => super._value as _$PomodoroTimerStarted;
}

/// @nodoc

class _$PomodoroTimerStarted
    with DiagnosticableTreeMixin
    implements PomodoroTimerStarted {
  const _$PomodoroTimerStarted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PomodoroEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PomodoroTimerStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loding,
    required TResult Function() loaded,
    required TResult Function() started,
    required TResult Function(Duration decrementValue) decrement,
    required TResult Function(Duration resetValue) resetPressed,
    required TResult Function(Duration setValue) setTimerType,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loding,
    TResult Function()? loaded,
    TResult Function()? started,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loding,
    TResult Function()? loaded,
    TResult Function()? started,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroTimerLoading value) loding,
    required TResult Function(PomodoroTimerLoaded value) loaded,
    required TResult Function(PomodoroTimerStarted value) started,
    required TResult Function(PomodoroTimerDecrementPressed value) decrement,
    required TResult Function(PomodoroTimerResetPressed value) resetPressed,
    required TResult Function(TimerTypeChanged value) setTimerType,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PomodoroTimerLoading value)? loding,
    TResult Function(PomodoroTimerLoaded value)? loaded,
    TResult Function(PomodoroTimerStarted value)? started,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroTimerLoading value)? loding,
    TResult Function(PomodoroTimerLoaded value)? loaded,
    TResult Function(PomodoroTimerStarted value)? started,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class PomodoroTimerStarted implements PomodoroEvent {
  const factory PomodoroTimerStarted() = _$PomodoroTimerStarted;
}

/// @nodoc
abstract class _$$PomodoroTimerDecrementPressedCopyWith<$Res> {
  factory _$$PomodoroTimerDecrementPressedCopyWith(
          _$PomodoroTimerDecrementPressed value,
          $Res Function(_$PomodoroTimerDecrementPressed) then) =
      __$$PomodoroTimerDecrementPressedCopyWithImpl<$Res>;
  $Res call({Duration decrementValue});
}

/// @nodoc
class __$$PomodoroTimerDecrementPressedCopyWithImpl<$Res>
    extends _$PomodoroEventCopyWithImpl<$Res>
    implements _$$PomodoroTimerDecrementPressedCopyWith<$Res> {
  __$$PomodoroTimerDecrementPressedCopyWithImpl(
      _$PomodoroTimerDecrementPressed _value,
      $Res Function(_$PomodoroTimerDecrementPressed) _then)
      : super(_value, (v) => _then(v as _$PomodoroTimerDecrementPressed));

  @override
  _$PomodoroTimerDecrementPressed get _value =>
      super._value as _$PomodoroTimerDecrementPressed;

  @override
  $Res call({
    Object? decrementValue = freezed,
  }) {
    return _then(_$PomodoroTimerDecrementPressed(
      decrementValue: decrementValue == freezed
          ? _value.decrementValue
          : decrementValue // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$PomodoroTimerDecrementPressed
    with DiagnosticableTreeMixin
    implements PomodoroTimerDecrementPressed {
  const _$PomodoroTimerDecrementPressed({required this.decrementValue});

  @override
  final Duration decrementValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroEvent.decrement(decrementValue: $decrementValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PomodoroEvent.decrement'))
      ..add(DiagnosticsProperty('decrementValue', decrementValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PomodoroTimerDecrementPressed &&
            const DeepCollectionEquality()
                .equals(other.decrementValue, decrementValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(decrementValue));

  @JsonKey(ignore: true)
  @override
  _$$PomodoroTimerDecrementPressedCopyWith<_$PomodoroTimerDecrementPressed>
      get copyWith => __$$PomodoroTimerDecrementPressedCopyWithImpl<
          _$PomodoroTimerDecrementPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loding,
    required TResult Function() loaded,
    required TResult Function() started,
    required TResult Function(Duration decrementValue) decrement,
    required TResult Function(Duration resetValue) resetPressed,
    required TResult Function(Duration setValue) setTimerType,
  }) {
    return decrement(decrementValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loding,
    TResult Function()? loaded,
    TResult Function()? started,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
  }) {
    return decrement?.call(decrementValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loding,
    TResult Function()? loaded,
    TResult Function()? started,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(decrementValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroTimerLoading value) loding,
    required TResult Function(PomodoroTimerLoaded value) loaded,
    required TResult Function(PomodoroTimerStarted value) started,
    required TResult Function(PomodoroTimerDecrementPressed value) decrement,
    required TResult Function(PomodoroTimerResetPressed value) resetPressed,
    required TResult Function(TimerTypeChanged value) setTimerType,
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PomodoroTimerLoading value)? loding,
    TResult Function(PomodoroTimerLoaded value)? loaded,
    TResult Function(PomodoroTimerStarted value)? started,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
  }) {
    return decrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroTimerLoading value)? loding,
    TResult Function(PomodoroTimerLoaded value)? loaded,
    TResult Function(PomodoroTimerStarted value)? started,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(this);
    }
    return orElse();
  }
}

abstract class PomodoroTimerDecrementPressed implements PomodoroEvent {
  const factory PomodoroTimerDecrementPressed(
          {required final Duration decrementValue}) =
      _$PomodoroTimerDecrementPressed;

  Duration get decrementValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PomodoroTimerDecrementPressedCopyWith<_$PomodoroTimerDecrementPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PomodoroTimerResetPressedCopyWith<$Res> {
  factory _$$PomodoroTimerResetPressedCopyWith(
          _$PomodoroTimerResetPressed value,
          $Res Function(_$PomodoroTimerResetPressed) then) =
      __$$PomodoroTimerResetPressedCopyWithImpl<$Res>;
  $Res call({Duration resetValue});
}

/// @nodoc
class __$$PomodoroTimerResetPressedCopyWithImpl<$Res>
    extends _$PomodoroEventCopyWithImpl<$Res>
    implements _$$PomodoroTimerResetPressedCopyWith<$Res> {
  __$$PomodoroTimerResetPressedCopyWithImpl(_$PomodoroTimerResetPressed _value,
      $Res Function(_$PomodoroTimerResetPressed) _then)
      : super(_value, (v) => _then(v as _$PomodoroTimerResetPressed));

  @override
  _$PomodoroTimerResetPressed get _value =>
      super._value as _$PomodoroTimerResetPressed;

  @override
  $Res call({
    Object? resetValue = freezed,
  }) {
    return _then(_$PomodoroTimerResetPressed(
      resetValue: resetValue == freezed
          ? _value.resetValue
          : resetValue // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$PomodoroTimerResetPressed
    with DiagnosticableTreeMixin
    implements PomodoroTimerResetPressed {
  const _$PomodoroTimerResetPressed({required this.resetValue});

  @override
  final Duration resetValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroEvent.resetPressed(resetValue: $resetValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PomodoroEvent.resetPressed'))
      ..add(DiagnosticsProperty('resetValue', resetValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PomodoroTimerResetPressed &&
            const DeepCollectionEquality()
                .equals(other.resetValue, resetValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(resetValue));

  @JsonKey(ignore: true)
  @override
  _$$PomodoroTimerResetPressedCopyWith<_$PomodoroTimerResetPressed>
      get copyWith => __$$PomodoroTimerResetPressedCopyWithImpl<
          _$PomodoroTimerResetPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loding,
    required TResult Function() loaded,
    required TResult Function() started,
    required TResult Function(Duration decrementValue) decrement,
    required TResult Function(Duration resetValue) resetPressed,
    required TResult Function(Duration setValue) setTimerType,
  }) {
    return resetPressed(resetValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loding,
    TResult Function()? loaded,
    TResult Function()? started,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
  }) {
    return resetPressed?.call(resetValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loding,
    TResult Function()? loaded,
    TResult Function()? started,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
    required TResult orElse(),
  }) {
    if (resetPressed != null) {
      return resetPressed(resetValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroTimerLoading value) loding,
    required TResult Function(PomodoroTimerLoaded value) loaded,
    required TResult Function(PomodoroTimerStarted value) started,
    required TResult Function(PomodoroTimerDecrementPressed value) decrement,
    required TResult Function(PomodoroTimerResetPressed value) resetPressed,
    required TResult Function(TimerTypeChanged value) setTimerType,
  }) {
    return resetPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PomodoroTimerLoading value)? loding,
    TResult Function(PomodoroTimerLoaded value)? loaded,
    TResult Function(PomodoroTimerStarted value)? started,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
  }) {
    return resetPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroTimerLoading value)? loding,
    TResult Function(PomodoroTimerLoaded value)? loaded,
    TResult Function(PomodoroTimerStarted value)? started,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
    required TResult orElse(),
  }) {
    if (resetPressed != null) {
      return resetPressed(this);
    }
    return orElse();
  }
}

abstract class PomodoroTimerResetPressed implements PomodoroEvent {
  const factory PomodoroTimerResetPressed(
      {required final Duration resetValue}) = _$PomodoroTimerResetPressed;

  Duration get resetValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PomodoroTimerResetPressedCopyWith<_$PomodoroTimerResetPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerTypeChangedCopyWith<$Res> {
  factory _$$TimerTypeChangedCopyWith(
          _$TimerTypeChanged value, $Res Function(_$TimerTypeChanged) then) =
      __$$TimerTypeChangedCopyWithImpl<$Res>;
  $Res call({Duration setValue});
}

/// @nodoc
class __$$TimerTypeChangedCopyWithImpl<$Res>
    extends _$PomodoroEventCopyWithImpl<$Res>
    implements _$$TimerTypeChangedCopyWith<$Res> {
  __$$TimerTypeChangedCopyWithImpl(
      _$TimerTypeChanged _value, $Res Function(_$TimerTypeChanged) _then)
      : super(_value, (v) => _then(v as _$TimerTypeChanged));

  @override
  _$TimerTypeChanged get _value => super._value as _$TimerTypeChanged;

  @override
  $Res call({
    Object? setValue = freezed,
  }) {
    return _then(_$TimerTypeChanged(
      setValue: setValue == freezed
          ? _value.setValue
          : setValue // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$TimerTypeChanged
    with DiagnosticableTreeMixin
    implements TimerTypeChanged {
  const _$TimerTypeChanged({required this.setValue});

  @override
  final Duration setValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroEvent.setTimerType(setValue: $setValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PomodoroEvent.setTimerType'))
      ..add(DiagnosticsProperty('setValue', setValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerTypeChanged &&
            const DeepCollectionEquality().equals(other.setValue, setValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(setValue));

  @JsonKey(ignore: true)
  @override
  _$$TimerTypeChangedCopyWith<_$TimerTypeChanged> get copyWith =>
      __$$TimerTypeChangedCopyWithImpl<_$TimerTypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loding,
    required TResult Function() loaded,
    required TResult Function() started,
    required TResult Function(Duration decrementValue) decrement,
    required TResult Function(Duration resetValue) resetPressed,
    required TResult Function(Duration setValue) setTimerType,
  }) {
    return setTimerType(setValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loding,
    TResult Function()? loaded,
    TResult Function()? started,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
  }) {
    return setTimerType?.call(setValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loding,
    TResult Function()? loaded,
    TResult Function()? started,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
    required TResult orElse(),
  }) {
    if (setTimerType != null) {
      return setTimerType(setValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroTimerLoading value) loding,
    required TResult Function(PomodoroTimerLoaded value) loaded,
    required TResult Function(PomodoroTimerStarted value) started,
    required TResult Function(PomodoroTimerDecrementPressed value) decrement,
    required TResult Function(PomodoroTimerResetPressed value) resetPressed,
    required TResult Function(TimerTypeChanged value) setTimerType,
  }) {
    return setTimerType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PomodoroTimerLoading value)? loding,
    TResult Function(PomodoroTimerLoaded value)? loaded,
    TResult Function(PomodoroTimerStarted value)? started,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
  }) {
    return setTimerType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroTimerLoading value)? loding,
    TResult Function(PomodoroTimerLoaded value)? loaded,
    TResult Function(PomodoroTimerStarted value)? started,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
    required TResult orElse(),
  }) {
    if (setTimerType != null) {
      return setTimerType(this);
    }
    return orElse();
  }
}

abstract class TimerTypeChanged implements PomodoroEvent {
  const factory TimerTypeChanged({required final Duration setValue}) =
      _$TimerTypeChanged;

  Duration get setValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TimerTypeChangedCopyWith<_$TimerTypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PomodoroState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration initialValue) initial,
    required TResult Function() loading,
    required TResult Function(Duration initialValue) loaded,
    required TResult Function() started,
    required TResult Function(Duration currentDuration) decrement,
    required TResult Function(Duration resetValue) resetPressed,
    required TResult Function(Duration setValue) setTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Duration initialValue)? initial,
    TResult Function()? loading,
    TResult Function(Duration initialValue)? loaded,
    TResult Function()? started,
    TResult Function(Duration currentDuration)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration initialValue)? initial,
    TResult Function()? loading,
    TResult Function(Duration initialValue)? loaded,
    TResult Function()? started,
    TResult Function(Duration currentDuration)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PomodoroInitial value) initial,
    required TResult Function(_PomodoroLoading value) loading,
    required TResult Function(_PomodoroLoaded value) loaded,
    required TResult Function(_PomodoroTimerStart value) started,
    required TResult Function(_PomodoroTimerDecrement value) decrement,
    required TResult Function(_PomodoroTimerReset value) resetPressed,
    required TResult Function(_PomodoroTimerChange value) setTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroLoading value)? loading,
    TResult Function(_PomodoroLoaded value)? loaded,
    TResult Function(_PomodoroTimerStart value)? started,
    TResult Function(_PomodoroTimerDecrement value)? decrement,
    TResult Function(_PomodoroTimerReset value)? resetPressed,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroLoading value)? loading,
    TResult Function(_PomodoroLoaded value)? loaded,
    TResult Function(_PomodoroTimerStart value)? started,
    TResult Function(_PomodoroTimerDecrement value)? decrement,
    TResult Function(_PomodoroTimerReset value)? resetPressed,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroStateCopyWith<$Res> {
  factory $PomodoroStateCopyWith(
          PomodoroState value, $Res Function(PomodoroState) then) =
      _$PomodoroStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PomodoroStateCopyWithImpl<$Res>
    implements $PomodoroStateCopyWith<$Res> {
  _$PomodoroStateCopyWithImpl(this._value, this._then);

  final PomodoroState _value;
  // ignore: unused_field
  final $Res Function(PomodoroState) _then;
}

/// @nodoc
abstract class _$$_PomodoroInitialCopyWith<$Res> {
  factory _$$_PomodoroInitialCopyWith(
          _$_PomodoroInitial value, $Res Function(_$_PomodoroInitial) then) =
      __$$_PomodoroInitialCopyWithImpl<$Res>;
  $Res call({Duration initialValue});
}

/// @nodoc
class __$$_PomodoroInitialCopyWithImpl<$Res>
    extends _$PomodoroStateCopyWithImpl<$Res>
    implements _$$_PomodoroInitialCopyWith<$Res> {
  __$$_PomodoroInitialCopyWithImpl(
      _$_PomodoroInitial _value, $Res Function(_$_PomodoroInitial) _then)
      : super(_value, (v) => _then(v as _$_PomodoroInitial));

  @override
  _$_PomodoroInitial get _value => super._value as _$_PomodoroInitial;

  @override
  $Res call({
    Object? initialValue = freezed,
  }) {
    return _then(_$_PomodoroInitial(
      initialValue: initialValue == freezed
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_PomodoroInitial
    with DiagnosticableTreeMixin
    implements _PomodoroInitial {
  const _$_PomodoroInitial({required this.initialValue});

  @override
  final Duration initialValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroState.initial(initialValue: $initialValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PomodoroState.initial'))
      ..add(DiagnosticsProperty('initialValue', initialValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PomodoroInitial &&
            const DeepCollectionEquality()
                .equals(other.initialValue, initialValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialValue));

  @JsonKey(ignore: true)
  @override
  _$$_PomodoroInitialCopyWith<_$_PomodoroInitial> get copyWith =>
      __$$_PomodoroInitialCopyWithImpl<_$_PomodoroInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration initialValue) initial,
    required TResult Function() loading,
    required TResult Function(Duration initialValue) loaded,
    required TResult Function() started,
    required TResult Function(Duration currentDuration) decrement,
    required TResult Function(Duration resetValue) resetPressed,
    required TResult Function(Duration setValue) setTimerType,
  }) {
    return initial(initialValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Duration initialValue)? initial,
    TResult Function()? loading,
    TResult Function(Duration initialValue)? loaded,
    TResult Function()? started,
    TResult Function(Duration currentDuration)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
  }) {
    return initial?.call(initialValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration initialValue)? initial,
    TResult Function()? loading,
    TResult Function(Duration initialValue)? loaded,
    TResult Function()? started,
    TResult Function(Duration currentDuration)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(initialValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PomodoroInitial value) initial,
    required TResult Function(_PomodoroLoading value) loading,
    required TResult Function(_PomodoroLoaded value) loaded,
    required TResult Function(_PomodoroTimerStart value) started,
    required TResult Function(_PomodoroTimerDecrement value) decrement,
    required TResult Function(_PomodoroTimerReset value) resetPressed,
    required TResult Function(_PomodoroTimerChange value) setTimerType,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroLoading value)? loading,
    TResult Function(_PomodoroLoaded value)? loaded,
    TResult Function(_PomodoroTimerStart value)? started,
    TResult Function(_PomodoroTimerDecrement value)? decrement,
    TResult Function(_PomodoroTimerReset value)? resetPressed,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroLoading value)? loading,
    TResult Function(_PomodoroLoaded value)? loaded,
    TResult Function(_PomodoroTimerStart value)? started,
    TResult Function(_PomodoroTimerDecrement value)? decrement,
    TResult Function(_PomodoroTimerReset value)? resetPressed,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PomodoroInitial implements PomodoroState {
  const factory _PomodoroInitial({required final Duration initialValue}) =
      _$_PomodoroInitial;

  Duration get initialValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PomodoroInitialCopyWith<_$_PomodoroInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PomodoroLoadingCopyWith<$Res> {
  factory _$$_PomodoroLoadingCopyWith(
          _$_PomodoroLoading value, $Res Function(_$_PomodoroLoading) then) =
      __$$_PomodoroLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PomodoroLoadingCopyWithImpl<$Res>
    extends _$PomodoroStateCopyWithImpl<$Res>
    implements _$$_PomodoroLoadingCopyWith<$Res> {
  __$$_PomodoroLoadingCopyWithImpl(
      _$_PomodoroLoading _value, $Res Function(_$_PomodoroLoading) _then)
      : super(_value, (v) => _then(v as _$_PomodoroLoading));

  @override
  _$_PomodoroLoading get _value => super._value as _$_PomodoroLoading;
}

/// @nodoc

class _$_PomodoroLoading
    with DiagnosticableTreeMixin
    implements _PomodoroLoading {
  const _$_PomodoroLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PomodoroState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PomodoroLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration initialValue) initial,
    required TResult Function() loading,
    required TResult Function(Duration initialValue) loaded,
    required TResult Function() started,
    required TResult Function(Duration currentDuration) decrement,
    required TResult Function(Duration resetValue) resetPressed,
    required TResult Function(Duration setValue) setTimerType,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Duration initialValue)? initial,
    TResult Function()? loading,
    TResult Function(Duration initialValue)? loaded,
    TResult Function()? started,
    TResult Function(Duration currentDuration)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration initialValue)? initial,
    TResult Function()? loading,
    TResult Function(Duration initialValue)? loaded,
    TResult Function()? started,
    TResult Function(Duration currentDuration)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
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
    required TResult Function(_PomodoroInitial value) initial,
    required TResult Function(_PomodoroLoading value) loading,
    required TResult Function(_PomodoroLoaded value) loaded,
    required TResult Function(_PomodoroTimerStart value) started,
    required TResult Function(_PomodoroTimerDecrement value) decrement,
    required TResult Function(_PomodoroTimerReset value) resetPressed,
    required TResult Function(_PomodoroTimerChange value) setTimerType,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroLoading value)? loading,
    TResult Function(_PomodoroLoaded value)? loaded,
    TResult Function(_PomodoroTimerStart value)? started,
    TResult Function(_PomodoroTimerDecrement value)? decrement,
    TResult Function(_PomodoroTimerReset value)? resetPressed,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroLoading value)? loading,
    TResult Function(_PomodoroLoaded value)? loaded,
    TResult Function(_PomodoroTimerStart value)? started,
    TResult Function(_PomodoroTimerDecrement value)? decrement,
    TResult Function(_PomodoroTimerReset value)? resetPressed,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PomodoroLoading implements PomodoroState {
  const factory _PomodoroLoading() = _$_PomodoroLoading;
}

/// @nodoc
abstract class _$$_PomodoroLoadedCopyWith<$Res> {
  factory _$$_PomodoroLoadedCopyWith(
          _$_PomodoroLoaded value, $Res Function(_$_PomodoroLoaded) then) =
      __$$_PomodoroLoadedCopyWithImpl<$Res>;
  $Res call({Duration initialValue});
}

/// @nodoc
class __$$_PomodoroLoadedCopyWithImpl<$Res>
    extends _$PomodoroStateCopyWithImpl<$Res>
    implements _$$_PomodoroLoadedCopyWith<$Res> {
  __$$_PomodoroLoadedCopyWithImpl(
      _$_PomodoroLoaded _value, $Res Function(_$_PomodoroLoaded) _then)
      : super(_value, (v) => _then(v as _$_PomodoroLoaded));

  @override
  _$_PomodoroLoaded get _value => super._value as _$_PomodoroLoaded;

  @override
  $Res call({
    Object? initialValue = freezed,
  }) {
    return _then(_$_PomodoroLoaded(
      initialValue: initialValue == freezed
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_PomodoroLoaded
    with DiagnosticableTreeMixin
    implements _PomodoroLoaded {
  const _$_PomodoroLoaded({required this.initialValue});

  @override
  final Duration initialValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroState.loaded(initialValue: $initialValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PomodoroState.loaded'))
      ..add(DiagnosticsProperty('initialValue', initialValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PomodoroLoaded &&
            const DeepCollectionEquality()
                .equals(other.initialValue, initialValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialValue));

  @JsonKey(ignore: true)
  @override
  _$$_PomodoroLoadedCopyWith<_$_PomodoroLoaded> get copyWith =>
      __$$_PomodoroLoadedCopyWithImpl<_$_PomodoroLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration initialValue) initial,
    required TResult Function() loading,
    required TResult Function(Duration initialValue) loaded,
    required TResult Function() started,
    required TResult Function(Duration currentDuration) decrement,
    required TResult Function(Duration resetValue) resetPressed,
    required TResult Function(Duration setValue) setTimerType,
  }) {
    return loaded(initialValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Duration initialValue)? initial,
    TResult Function()? loading,
    TResult Function(Duration initialValue)? loaded,
    TResult Function()? started,
    TResult Function(Duration currentDuration)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
  }) {
    return loaded?.call(initialValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration initialValue)? initial,
    TResult Function()? loading,
    TResult Function(Duration initialValue)? loaded,
    TResult Function()? started,
    TResult Function(Duration currentDuration)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(initialValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PomodoroInitial value) initial,
    required TResult Function(_PomodoroLoading value) loading,
    required TResult Function(_PomodoroLoaded value) loaded,
    required TResult Function(_PomodoroTimerStart value) started,
    required TResult Function(_PomodoroTimerDecrement value) decrement,
    required TResult Function(_PomodoroTimerReset value) resetPressed,
    required TResult Function(_PomodoroTimerChange value) setTimerType,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroLoading value)? loading,
    TResult Function(_PomodoroLoaded value)? loaded,
    TResult Function(_PomodoroTimerStart value)? started,
    TResult Function(_PomodoroTimerDecrement value)? decrement,
    TResult Function(_PomodoroTimerReset value)? resetPressed,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroLoading value)? loading,
    TResult Function(_PomodoroLoaded value)? loaded,
    TResult Function(_PomodoroTimerStart value)? started,
    TResult Function(_PomodoroTimerDecrement value)? decrement,
    TResult Function(_PomodoroTimerReset value)? resetPressed,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _PomodoroLoaded implements PomodoroState {
  const factory _PomodoroLoaded({required final Duration initialValue}) =
      _$_PomodoroLoaded;

  Duration get initialValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PomodoroLoadedCopyWith<_$_PomodoroLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PomodoroTimerStartCopyWith<$Res> {
  factory _$$_PomodoroTimerStartCopyWith(_$_PomodoroTimerStart value,
          $Res Function(_$_PomodoroTimerStart) then) =
      __$$_PomodoroTimerStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PomodoroTimerStartCopyWithImpl<$Res>
    extends _$PomodoroStateCopyWithImpl<$Res>
    implements _$$_PomodoroTimerStartCopyWith<$Res> {
  __$$_PomodoroTimerStartCopyWithImpl(
      _$_PomodoroTimerStart _value, $Res Function(_$_PomodoroTimerStart) _then)
      : super(_value, (v) => _then(v as _$_PomodoroTimerStart));

  @override
  _$_PomodoroTimerStart get _value => super._value as _$_PomodoroTimerStart;
}

/// @nodoc

class _$_PomodoroTimerStart
    with DiagnosticableTreeMixin
    implements _PomodoroTimerStart {
  const _$_PomodoroTimerStart();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroState.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PomodoroState.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PomodoroTimerStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration initialValue) initial,
    required TResult Function() loading,
    required TResult Function(Duration initialValue) loaded,
    required TResult Function() started,
    required TResult Function(Duration currentDuration) decrement,
    required TResult Function(Duration resetValue) resetPressed,
    required TResult Function(Duration setValue) setTimerType,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Duration initialValue)? initial,
    TResult Function()? loading,
    TResult Function(Duration initialValue)? loaded,
    TResult Function()? started,
    TResult Function(Duration currentDuration)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration initialValue)? initial,
    TResult Function()? loading,
    TResult Function(Duration initialValue)? loaded,
    TResult Function()? started,
    TResult Function(Duration currentDuration)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PomodoroInitial value) initial,
    required TResult Function(_PomodoroLoading value) loading,
    required TResult Function(_PomodoroLoaded value) loaded,
    required TResult Function(_PomodoroTimerStart value) started,
    required TResult Function(_PomodoroTimerDecrement value) decrement,
    required TResult Function(_PomodoroTimerReset value) resetPressed,
    required TResult Function(_PomodoroTimerChange value) setTimerType,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroLoading value)? loading,
    TResult Function(_PomodoroLoaded value)? loaded,
    TResult Function(_PomodoroTimerStart value)? started,
    TResult Function(_PomodoroTimerDecrement value)? decrement,
    TResult Function(_PomodoroTimerReset value)? resetPressed,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroLoading value)? loading,
    TResult Function(_PomodoroLoaded value)? loaded,
    TResult Function(_PomodoroTimerStart value)? started,
    TResult Function(_PomodoroTimerDecrement value)? decrement,
    TResult Function(_PomodoroTimerReset value)? resetPressed,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _PomodoroTimerStart implements PomodoroState {
  const factory _PomodoroTimerStart() = _$_PomodoroTimerStart;
}

/// @nodoc
abstract class _$$_PomodoroTimerDecrementCopyWith<$Res> {
  factory _$$_PomodoroTimerDecrementCopyWith(_$_PomodoroTimerDecrement value,
          $Res Function(_$_PomodoroTimerDecrement) then) =
      __$$_PomodoroTimerDecrementCopyWithImpl<$Res>;
  $Res call({Duration currentDuration});
}

/// @nodoc
class __$$_PomodoroTimerDecrementCopyWithImpl<$Res>
    extends _$PomodoroStateCopyWithImpl<$Res>
    implements _$$_PomodoroTimerDecrementCopyWith<$Res> {
  __$$_PomodoroTimerDecrementCopyWithImpl(_$_PomodoroTimerDecrement _value,
      $Res Function(_$_PomodoroTimerDecrement) _then)
      : super(_value, (v) => _then(v as _$_PomodoroTimerDecrement));

  @override
  _$_PomodoroTimerDecrement get _value =>
      super._value as _$_PomodoroTimerDecrement;

  @override
  $Res call({
    Object? currentDuration = freezed,
  }) {
    return _then(_$_PomodoroTimerDecrement(
      currentDuration: currentDuration == freezed
          ? _value.currentDuration
          : currentDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_PomodoroTimerDecrement
    with DiagnosticableTreeMixin
    implements _PomodoroTimerDecrement {
  const _$_PomodoroTimerDecrement({required this.currentDuration});

  @override
  final Duration currentDuration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroState.decrement(currentDuration: $currentDuration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PomodoroState.decrement'))
      ..add(DiagnosticsProperty('currentDuration', currentDuration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PomodoroTimerDecrement &&
            const DeepCollectionEquality()
                .equals(other.currentDuration, currentDuration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentDuration));

  @JsonKey(ignore: true)
  @override
  _$$_PomodoroTimerDecrementCopyWith<_$_PomodoroTimerDecrement> get copyWith =>
      __$$_PomodoroTimerDecrementCopyWithImpl<_$_PomodoroTimerDecrement>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration initialValue) initial,
    required TResult Function() loading,
    required TResult Function(Duration initialValue) loaded,
    required TResult Function() started,
    required TResult Function(Duration currentDuration) decrement,
    required TResult Function(Duration resetValue) resetPressed,
    required TResult Function(Duration setValue) setTimerType,
  }) {
    return decrement(currentDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Duration initialValue)? initial,
    TResult Function()? loading,
    TResult Function(Duration initialValue)? loaded,
    TResult Function()? started,
    TResult Function(Duration currentDuration)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
  }) {
    return decrement?.call(currentDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration initialValue)? initial,
    TResult Function()? loading,
    TResult Function(Duration initialValue)? loaded,
    TResult Function()? started,
    TResult Function(Duration currentDuration)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(currentDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PomodoroInitial value) initial,
    required TResult Function(_PomodoroLoading value) loading,
    required TResult Function(_PomodoroLoaded value) loaded,
    required TResult Function(_PomodoroTimerStart value) started,
    required TResult Function(_PomodoroTimerDecrement value) decrement,
    required TResult Function(_PomodoroTimerReset value) resetPressed,
    required TResult Function(_PomodoroTimerChange value) setTimerType,
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroLoading value)? loading,
    TResult Function(_PomodoroLoaded value)? loaded,
    TResult Function(_PomodoroTimerStart value)? started,
    TResult Function(_PomodoroTimerDecrement value)? decrement,
    TResult Function(_PomodoroTimerReset value)? resetPressed,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
  }) {
    return decrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroLoading value)? loading,
    TResult Function(_PomodoroLoaded value)? loaded,
    TResult Function(_PomodoroTimerStart value)? started,
    TResult Function(_PomodoroTimerDecrement value)? decrement,
    TResult Function(_PomodoroTimerReset value)? resetPressed,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(this);
    }
    return orElse();
  }
}

abstract class _PomodoroTimerDecrement implements PomodoroState {
  const factory _PomodoroTimerDecrement(
      {required final Duration currentDuration}) = _$_PomodoroTimerDecrement;

  Duration get currentDuration => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PomodoroTimerDecrementCopyWith<_$_PomodoroTimerDecrement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PomodoroTimerResetCopyWith<$Res> {
  factory _$$_PomodoroTimerResetCopyWith(_$_PomodoroTimerReset value,
          $Res Function(_$_PomodoroTimerReset) then) =
      __$$_PomodoroTimerResetCopyWithImpl<$Res>;
  $Res call({Duration resetValue});
}

/// @nodoc
class __$$_PomodoroTimerResetCopyWithImpl<$Res>
    extends _$PomodoroStateCopyWithImpl<$Res>
    implements _$$_PomodoroTimerResetCopyWith<$Res> {
  __$$_PomodoroTimerResetCopyWithImpl(
      _$_PomodoroTimerReset _value, $Res Function(_$_PomodoroTimerReset) _then)
      : super(_value, (v) => _then(v as _$_PomodoroTimerReset));

  @override
  _$_PomodoroTimerReset get _value => super._value as _$_PomodoroTimerReset;

  @override
  $Res call({
    Object? resetValue = freezed,
  }) {
    return _then(_$_PomodoroTimerReset(
      resetValue: resetValue == freezed
          ? _value.resetValue
          : resetValue // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_PomodoroTimerReset
    with DiagnosticableTreeMixin
    implements _PomodoroTimerReset {
  const _$_PomodoroTimerReset({required this.resetValue});

  @override
  final Duration resetValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroState.resetPressed(resetValue: $resetValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PomodoroState.resetPressed'))
      ..add(DiagnosticsProperty('resetValue', resetValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PomodoroTimerReset &&
            const DeepCollectionEquality()
                .equals(other.resetValue, resetValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(resetValue));

  @JsonKey(ignore: true)
  @override
  _$$_PomodoroTimerResetCopyWith<_$_PomodoroTimerReset> get copyWith =>
      __$$_PomodoroTimerResetCopyWithImpl<_$_PomodoroTimerReset>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration initialValue) initial,
    required TResult Function() loading,
    required TResult Function(Duration initialValue) loaded,
    required TResult Function() started,
    required TResult Function(Duration currentDuration) decrement,
    required TResult Function(Duration resetValue) resetPressed,
    required TResult Function(Duration setValue) setTimerType,
  }) {
    return resetPressed(resetValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Duration initialValue)? initial,
    TResult Function()? loading,
    TResult Function(Duration initialValue)? loaded,
    TResult Function()? started,
    TResult Function(Duration currentDuration)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
  }) {
    return resetPressed?.call(resetValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration initialValue)? initial,
    TResult Function()? loading,
    TResult Function(Duration initialValue)? loaded,
    TResult Function()? started,
    TResult Function(Duration currentDuration)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
    required TResult orElse(),
  }) {
    if (resetPressed != null) {
      return resetPressed(resetValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PomodoroInitial value) initial,
    required TResult Function(_PomodoroLoading value) loading,
    required TResult Function(_PomodoroLoaded value) loaded,
    required TResult Function(_PomodoroTimerStart value) started,
    required TResult Function(_PomodoroTimerDecrement value) decrement,
    required TResult Function(_PomodoroTimerReset value) resetPressed,
    required TResult Function(_PomodoroTimerChange value) setTimerType,
  }) {
    return resetPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroLoading value)? loading,
    TResult Function(_PomodoroLoaded value)? loaded,
    TResult Function(_PomodoroTimerStart value)? started,
    TResult Function(_PomodoroTimerDecrement value)? decrement,
    TResult Function(_PomodoroTimerReset value)? resetPressed,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
  }) {
    return resetPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroLoading value)? loading,
    TResult Function(_PomodoroLoaded value)? loaded,
    TResult Function(_PomodoroTimerStart value)? started,
    TResult Function(_PomodoroTimerDecrement value)? decrement,
    TResult Function(_PomodoroTimerReset value)? resetPressed,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
    required TResult orElse(),
  }) {
    if (resetPressed != null) {
      return resetPressed(this);
    }
    return orElse();
  }
}

abstract class _PomodoroTimerReset implements PomodoroState {
  const factory _PomodoroTimerReset({required final Duration resetValue}) =
      _$_PomodoroTimerReset;

  Duration get resetValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PomodoroTimerResetCopyWith<_$_PomodoroTimerReset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PomodoroTimerChangeCopyWith<$Res> {
  factory _$$_PomodoroTimerChangeCopyWith(_$_PomodoroTimerChange value,
          $Res Function(_$_PomodoroTimerChange) then) =
      __$$_PomodoroTimerChangeCopyWithImpl<$Res>;
  $Res call({Duration setValue});
}

/// @nodoc
class __$$_PomodoroTimerChangeCopyWithImpl<$Res>
    extends _$PomodoroStateCopyWithImpl<$Res>
    implements _$$_PomodoroTimerChangeCopyWith<$Res> {
  __$$_PomodoroTimerChangeCopyWithImpl(_$_PomodoroTimerChange _value,
      $Res Function(_$_PomodoroTimerChange) _then)
      : super(_value, (v) => _then(v as _$_PomodoroTimerChange));

  @override
  _$_PomodoroTimerChange get _value => super._value as _$_PomodoroTimerChange;

  @override
  $Res call({
    Object? setValue = freezed,
  }) {
    return _then(_$_PomodoroTimerChange(
      setValue: setValue == freezed
          ? _value.setValue
          : setValue // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_PomodoroTimerChange
    with DiagnosticableTreeMixin
    implements _PomodoroTimerChange {
  const _$_PomodoroTimerChange({required this.setValue});

  @override
  final Duration setValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroState.setTimerType(setValue: $setValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PomodoroState.setTimerType'))
      ..add(DiagnosticsProperty('setValue', setValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PomodoroTimerChange &&
            const DeepCollectionEquality().equals(other.setValue, setValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(setValue));

  @JsonKey(ignore: true)
  @override
  _$$_PomodoroTimerChangeCopyWith<_$_PomodoroTimerChange> get copyWith =>
      __$$_PomodoroTimerChangeCopyWithImpl<_$_PomodoroTimerChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration initialValue) initial,
    required TResult Function() loading,
    required TResult Function(Duration initialValue) loaded,
    required TResult Function() started,
    required TResult Function(Duration currentDuration) decrement,
    required TResult Function(Duration resetValue) resetPressed,
    required TResult Function(Duration setValue) setTimerType,
  }) {
    return setTimerType(setValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Duration initialValue)? initial,
    TResult Function()? loading,
    TResult Function(Duration initialValue)? loaded,
    TResult Function()? started,
    TResult Function(Duration currentDuration)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
  }) {
    return setTimerType?.call(setValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration initialValue)? initial,
    TResult Function()? loading,
    TResult Function(Duration initialValue)? loaded,
    TResult Function()? started,
    TResult Function(Duration currentDuration)? decrement,
    TResult Function(Duration resetValue)? resetPressed,
    TResult Function(Duration setValue)? setTimerType,
    required TResult orElse(),
  }) {
    if (setTimerType != null) {
      return setTimerType(setValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PomodoroInitial value) initial,
    required TResult Function(_PomodoroLoading value) loading,
    required TResult Function(_PomodoroLoaded value) loaded,
    required TResult Function(_PomodoroTimerStart value) started,
    required TResult Function(_PomodoroTimerDecrement value) decrement,
    required TResult Function(_PomodoroTimerReset value) resetPressed,
    required TResult Function(_PomodoroTimerChange value) setTimerType,
  }) {
    return setTimerType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroLoading value)? loading,
    TResult Function(_PomodoroLoaded value)? loaded,
    TResult Function(_PomodoroTimerStart value)? started,
    TResult Function(_PomodoroTimerDecrement value)? decrement,
    TResult Function(_PomodoroTimerReset value)? resetPressed,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
  }) {
    return setTimerType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroLoading value)? loading,
    TResult Function(_PomodoroLoaded value)? loaded,
    TResult Function(_PomodoroTimerStart value)? started,
    TResult Function(_PomodoroTimerDecrement value)? decrement,
    TResult Function(_PomodoroTimerReset value)? resetPressed,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
    required TResult orElse(),
  }) {
    if (setTimerType != null) {
      return setTimerType(this);
    }
    return orElse();
  }
}

abstract class _PomodoroTimerChange implements PomodoroState {
  const factory _PomodoroTimerChange({required final Duration setValue}) =
      _$_PomodoroTimerChange;

  Duration get setValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PomodoroTimerChangeCopyWith<_$_PomodoroTimerChange> get copyWith =>
      throw _privateConstructorUsedError;
}
