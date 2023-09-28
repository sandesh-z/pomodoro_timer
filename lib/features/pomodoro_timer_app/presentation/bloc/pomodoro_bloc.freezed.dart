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
    required TResult Function() stop,
    required TResult Function(Duration decrementValue) decrement,
    required TResult Function() resetPressed,
    required TResult Function(TimerType timerType) setTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function()? resetPressed,
    TResult Function(TimerType timerType)? setTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function()? resetPressed,
    TResult Function(TimerType timerType)? setTimerType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroTimerStoped value) stop,
    required TResult Function(PomodoroTimerDecrementPressed value) decrement,
    required TResult Function(PomodoroTimerResetPressed value) resetPressed,
    required TResult Function(TimerTypeChanged value) setTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PomodoroTimerStoped value)? stop,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroTimerStoped value)? stop,
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
abstract class _$$PomodoroTimerStopedCopyWith<$Res> {
  factory _$$PomodoroTimerStopedCopyWith(_$PomodoroTimerStoped value,
          $Res Function(_$PomodoroTimerStoped) then) =
      __$$PomodoroTimerStopedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PomodoroTimerStopedCopyWithImpl<$Res>
    extends _$PomodoroEventCopyWithImpl<$Res>
    implements _$$PomodoroTimerStopedCopyWith<$Res> {
  __$$PomodoroTimerStopedCopyWithImpl(
      _$PomodoroTimerStoped _value, $Res Function(_$PomodoroTimerStoped) _then)
      : super(_value, (v) => _then(v as _$PomodoroTimerStoped));

  @override
  _$PomodoroTimerStoped get _value => super._value as _$PomodoroTimerStoped;
}

/// @nodoc

class _$PomodoroTimerStoped
    with DiagnosticableTreeMixin
    implements PomodoroTimerStoped {
  const _$PomodoroTimerStoped();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroEvent.stop()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PomodoroEvent.stop'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PomodoroTimerStoped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stop,
    required TResult Function(Duration decrementValue) decrement,
    required TResult Function() resetPressed,
    required TResult Function(TimerType timerType) setTimerType,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function()? resetPressed,
    TResult Function(TimerType timerType)? setTimerType,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function()? resetPressed,
    TResult Function(TimerType timerType)? setTimerType,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroTimerStoped value) stop,
    required TResult Function(PomodoroTimerDecrementPressed value) decrement,
    required TResult Function(PomodoroTimerResetPressed value) resetPressed,
    required TResult Function(TimerTypeChanged value) setTimerType,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PomodoroTimerStoped value)? stop,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroTimerStoped value)? stop,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class PomodoroTimerStoped implements PomodoroEvent {
  const factory PomodoroTimerStoped() = _$PomodoroTimerStoped;
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
    required TResult Function() stop,
    required TResult Function(Duration decrementValue) decrement,
    required TResult Function() resetPressed,
    required TResult Function(TimerType timerType) setTimerType,
  }) {
    return decrement(decrementValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function()? resetPressed,
    TResult Function(TimerType timerType)? setTimerType,
  }) {
    return decrement?.call(decrementValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function()? resetPressed,
    TResult Function(TimerType timerType)? setTimerType,
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
    required TResult Function(PomodoroTimerStoped value) stop,
    required TResult Function(PomodoroTimerDecrementPressed value) decrement,
    required TResult Function(PomodoroTimerResetPressed value) resetPressed,
    required TResult Function(TimerTypeChanged value) setTimerType,
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PomodoroTimerStoped value)? stop,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
  }) {
    return decrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroTimerStoped value)? stop,
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
}

/// @nodoc

class _$PomodoroTimerResetPressed
    with DiagnosticableTreeMixin
    implements PomodoroTimerResetPressed {
  const _$PomodoroTimerResetPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroEvent.resetPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PomodoroEvent.resetPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PomodoroTimerResetPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stop,
    required TResult Function(Duration decrementValue) decrement,
    required TResult Function() resetPressed,
    required TResult Function(TimerType timerType) setTimerType,
  }) {
    return resetPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function()? resetPressed,
    TResult Function(TimerType timerType)? setTimerType,
  }) {
    return resetPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function()? resetPressed,
    TResult Function(TimerType timerType)? setTimerType,
    required TResult orElse(),
  }) {
    if (resetPressed != null) {
      return resetPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroTimerStoped value) stop,
    required TResult Function(PomodoroTimerDecrementPressed value) decrement,
    required TResult Function(PomodoroTimerResetPressed value) resetPressed,
    required TResult Function(TimerTypeChanged value) setTimerType,
  }) {
    return resetPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PomodoroTimerStoped value)? stop,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
  }) {
    return resetPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroTimerStoped value)? stop,
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
  const factory PomodoroTimerResetPressed() = _$PomodoroTimerResetPressed;
}

/// @nodoc
abstract class _$$TimerTypeChangedCopyWith<$Res> {
  factory _$$TimerTypeChangedCopyWith(
          _$TimerTypeChanged value, $Res Function(_$TimerTypeChanged) then) =
      __$$TimerTypeChangedCopyWithImpl<$Res>;
  $Res call({TimerType timerType});
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
    Object? timerType = freezed,
  }) {
    return _then(_$TimerTypeChanged(
      timerType: timerType == freezed
          ? _value.timerType
          : timerType // ignore: cast_nullable_to_non_nullable
              as TimerType,
    ));
  }
}

/// @nodoc

class _$TimerTypeChanged
    with DiagnosticableTreeMixin
    implements TimerTypeChanged {
  const _$TimerTypeChanged({required this.timerType});

  @override
  final TimerType timerType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroEvent.setTimerType(timerType: $timerType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PomodoroEvent.setTimerType'))
      ..add(DiagnosticsProperty('timerType', timerType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerTypeChanged &&
            const DeepCollectionEquality().equals(other.timerType, timerType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(timerType));

  @JsonKey(ignore: true)
  @override
  _$$TimerTypeChangedCopyWith<_$TimerTypeChanged> get copyWith =>
      __$$TimerTypeChangedCopyWithImpl<_$TimerTypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stop,
    required TResult Function(Duration decrementValue) decrement,
    required TResult Function() resetPressed,
    required TResult Function(TimerType timerType) setTimerType,
  }) {
    return setTimerType(timerType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function()? resetPressed,
    TResult Function(TimerType timerType)? setTimerType,
  }) {
    return setTimerType?.call(timerType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(Duration decrementValue)? decrement,
    TResult Function()? resetPressed,
    TResult Function(TimerType timerType)? setTimerType,
    required TResult orElse(),
  }) {
    if (setTimerType != null) {
      return setTimerType(timerType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroTimerStoped value) stop,
    required TResult Function(PomodoroTimerDecrementPressed value) decrement,
    required TResult Function(PomodoroTimerResetPressed value) resetPressed,
    required TResult Function(TimerTypeChanged value) setTimerType,
  }) {
    return setTimerType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PomodoroTimerStoped value)? stop,
    TResult Function(PomodoroTimerDecrementPressed value)? decrement,
    TResult Function(PomodoroTimerResetPressed value)? resetPressed,
    TResult Function(TimerTypeChanged value)? setTimerType,
  }) {
    return setTimerType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroTimerStoped value)? stop,
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
  const factory TimerTypeChanged({required final TimerType timerType}) =
      _$TimerTypeChanged;

  TimerType get timerType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TimerTypeChangedCopyWith<_$TimerTypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PomodoroState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration timer) paused,
    required TResult Function(Duration currentDuration) decrementing,
    required TResult Function(Duration currentTime) reset,
    required TResult Function(TimerType setTimerType) setTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration timer)? paused,
    TResult Function(Duration currentDuration)? decrementing,
    TResult Function(Duration currentTime)? reset,
    TResult Function(TimerType setTimerType)? setTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration timer)? paused,
    TResult Function(Duration currentDuration)? decrementing,
    TResult Function(Duration currentTime)? reset,
    TResult Function(TimerType setTimerType)? setTimerType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PomodoroInitial value) initial,
    required TResult Function(_PomodoroTimerPaused value) paused,
    required TResult Function(_PomodoroTimerDecrementing value) decrementing,
    required TResult Function(_PomodoroTimerReset value) reset,
    required TResult Function(_PomodoroTimerChange value) setTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroTimerPaused value)? paused,
    TResult Function(_PomodoroTimerDecrementing value)? decrementing,
    TResult Function(_PomodoroTimerReset value)? reset,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroTimerPaused value)? paused,
    TResult Function(_PomodoroTimerDecrementing value)? decrementing,
    TResult Function(_PomodoroTimerReset value)? reset,
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
}

/// @nodoc

class _$_PomodoroInitial
    with DiagnosticableTreeMixin
    implements _PomodoroInitial {
  const _$_PomodoroInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PomodoroState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PomodoroInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration timer) paused,
    required TResult Function(Duration currentDuration) decrementing,
    required TResult Function(Duration currentTime) reset,
    required TResult Function(TimerType setTimerType) setTimerType,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration timer)? paused,
    TResult Function(Duration currentDuration)? decrementing,
    TResult Function(Duration currentTime)? reset,
    TResult Function(TimerType setTimerType)? setTimerType,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration timer)? paused,
    TResult Function(Duration currentDuration)? decrementing,
    TResult Function(Duration currentTime)? reset,
    TResult Function(TimerType setTimerType)? setTimerType,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PomodoroInitial value) initial,
    required TResult Function(_PomodoroTimerPaused value) paused,
    required TResult Function(_PomodoroTimerDecrementing value) decrementing,
    required TResult Function(_PomodoroTimerReset value) reset,
    required TResult Function(_PomodoroTimerChange value) setTimerType,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroTimerPaused value)? paused,
    TResult Function(_PomodoroTimerDecrementing value)? decrementing,
    TResult Function(_PomodoroTimerReset value)? reset,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroTimerPaused value)? paused,
    TResult Function(_PomodoroTimerDecrementing value)? decrementing,
    TResult Function(_PomodoroTimerReset value)? reset,
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
  const factory _PomodoroInitial() = _$_PomodoroInitial;
}

/// @nodoc
abstract class _$$_PomodoroTimerPausedCopyWith<$Res> {
  factory _$$_PomodoroTimerPausedCopyWith(_$_PomodoroTimerPaused value,
          $Res Function(_$_PomodoroTimerPaused) then) =
      __$$_PomodoroTimerPausedCopyWithImpl<$Res>;
  $Res call({Duration timer});
}

/// @nodoc
class __$$_PomodoroTimerPausedCopyWithImpl<$Res>
    extends _$PomodoroStateCopyWithImpl<$Res>
    implements _$$_PomodoroTimerPausedCopyWith<$Res> {
  __$$_PomodoroTimerPausedCopyWithImpl(_$_PomodoroTimerPaused _value,
      $Res Function(_$_PomodoroTimerPaused) _then)
      : super(_value, (v) => _then(v as _$_PomodoroTimerPaused));

  @override
  _$_PomodoroTimerPaused get _value => super._value as _$_PomodoroTimerPaused;

  @override
  $Res call({
    Object? timer = freezed,
  }) {
    return _then(_$_PomodoroTimerPaused(
      timer: timer == freezed
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_PomodoroTimerPaused
    with DiagnosticableTreeMixin
    implements _PomodoroTimerPaused {
  const _$_PomodoroTimerPaused({required this.timer});

  @override
  final Duration timer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroState.paused(timer: $timer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PomodoroState.paused'))
      ..add(DiagnosticsProperty('timer', timer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PomodoroTimerPaused &&
            const DeepCollectionEquality().equals(other.timer, timer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(timer));

  @JsonKey(ignore: true)
  @override
  _$$_PomodoroTimerPausedCopyWith<_$_PomodoroTimerPaused> get copyWith =>
      __$$_PomodoroTimerPausedCopyWithImpl<_$_PomodoroTimerPaused>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration timer) paused,
    required TResult Function(Duration currentDuration) decrementing,
    required TResult Function(Duration currentTime) reset,
    required TResult Function(TimerType setTimerType) setTimerType,
  }) {
    return paused(timer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration timer)? paused,
    TResult Function(Duration currentDuration)? decrementing,
    TResult Function(Duration currentTime)? reset,
    TResult Function(TimerType setTimerType)? setTimerType,
  }) {
    return paused?.call(timer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration timer)? paused,
    TResult Function(Duration currentDuration)? decrementing,
    TResult Function(Duration currentTime)? reset,
    TResult Function(TimerType setTimerType)? setTimerType,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(timer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PomodoroInitial value) initial,
    required TResult Function(_PomodoroTimerPaused value) paused,
    required TResult Function(_PomodoroTimerDecrementing value) decrementing,
    required TResult Function(_PomodoroTimerReset value) reset,
    required TResult Function(_PomodoroTimerChange value) setTimerType,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroTimerPaused value)? paused,
    TResult Function(_PomodoroTimerDecrementing value)? decrementing,
    TResult Function(_PomodoroTimerReset value)? reset,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroTimerPaused value)? paused,
    TResult Function(_PomodoroTimerDecrementing value)? decrementing,
    TResult Function(_PomodoroTimerReset value)? reset,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _PomodoroTimerPaused implements PomodoroState {
  const factory _PomodoroTimerPaused({required final Duration timer}) =
      _$_PomodoroTimerPaused;

  Duration get timer => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PomodoroTimerPausedCopyWith<_$_PomodoroTimerPaused> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PomodoroTimerDecrementingCopyWith<$Res> {
  factory _$$_PomodoroTimerDecrementingCopyWith(
          _$_PomodoroTimerDecrementing value,
          $Res Function(_$_PomodoroTimerDecrementing) then) =
      __$$_PomodoroTimerDecrementingCopyWithImpl<$Res>;
  $Res call({Duration currentDuration});
}

/// @nodoc
class __$$_PomodoroTimerDecrementingCopyWithImpl<$Res>
    extends _$PomodoroStateCopyWithImpl<$Res>
    implements _$$_PomodoroTimerDecrementingCopyWith<$Res> {
  __$$_PomodoroTimerDecrementingCopyWithImpl(
      _$_PomodoroTimerDecrementing _value,
      $Res Function(_$_PomodoroTimerDecrementing) _then)
      : super(_value, (v) => _then(v as _$_PomodoroTimerDecrementing));

  @override
  _$_PomodoroTimerDecrementing get _value =>
      super._value as _$_PomodoroTimerDecrementing;

  @override
  $Res call({
    Object? currentDuration = freezed,
  }) {
    return _then(_$_PomodoroTimerDecrementing(
      currentDuration: currentDuration == freezed
          ? _value.currentDuration
          : currentDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_PomodoroTimerDecrementing
    with DiagnosticableTreeMixin
    implements _PomodoroTimerDecrementing {
  const _$_PomodoroTimerDecrementing({required this.currentDuration});

  @override
  final Duration currentDuration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroState.decrementing(currentDuration: $currentDuration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PomodoroState.decrementing'))
      ..add(DiagnosticsProperty('currentDuration', currentDuration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PomodoroTimerDecrementing &&
            const DeepCollectionEquality()
                .equals(other.currentDuration, currentDuration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentDuration));

  @JsonKey(ignore: true)
  @override
  _$$_PomodoroTimerDecrementingCopyWith<_$_PomodoroTimerDecrementing>
      get copyWith => __$$_PomodoroTimerDecrementingCopyWithImpl<
          _$_PomodoroTimerDecrementing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration timer) paused,
    required TResult Function(Duration currentDuration) decrementing,
    required TResult Function(Duration currentTime) reset,
    required TResult Function(TimerType setTimerType) setTimerType,
  }) {
    return decrementing(currentDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration timer)? paused,
    TResult Function(Duration currentDuration)? decrementing,
    TResult Function(Duration currentTime)? reset,
    TResult Function(TimerType setTimerType)? setTimerType,
  }) {
    return decrementing?.call(currentDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration timer)? paused,
    TResult Function(Duration currentDuration)? decrementing,
    TResult Function(Duration currentTime)? reset,
    TResult Function(TimerType setTimerType)? setTimerType,
    required TResult orElse(),
  }) {
    if (decrementing != null) {
      return decrementing(currentDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PomodoroInitial value) initial,
    required TResult Function(_PomodoroTimerPaused value) paused,
    required TResult Function(_PomodoroTimerDecrementing value) decrementing,
    required TResult Function(_PomodoroTimerReset value) reset,
    required TResult Function(_PomodoroTimerChange value) setTimerType,
  }) {
    return decrementing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroTimerPaused value)? paused,
    TResult Function(_PomodoroTimerDecrementing value)? decrementing,
    TResult Function(_PomodoroTimerReset value)? reset,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
  }) {
    return decrementing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroTimerPaused value)? paused,
    TResult Function(_PomodoroTimerDecrementing value)? decrementing,
    TResult Function(_PomodoroTimerReset value)? reset,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
    required TResult orElse(),
  }) {
    if (decrementing != null) {
      return decrementing(this);
    }
    return orElse();
  }
}

abstract class _PomodoroTimerDecrementing implements PomodoroState {
  const factory _PomodoroTimerDecrementing(
      {required final Duration currentDuration}) = _$_PomodoroTimerDecrementing;

  Duration get currentDuration => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PomodoroTimerDecrementingCopyWith<_$_PomodoroTimerDecrementing>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PomodoroTimerResetCopyWith<$Res> {
  factory _$$_PomodoroTimerResetCopyWith(_$_PomodoroTimerReset value,
          $Res Function(_$_PomodoroTimerReset) then) =
      __$$_PomodoroTimerResetCopyWithImpl<$Res>;
  $Res call({Duration currentTime});
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
    Object? currentTime = freezed,
  }) {
    return _then(_$_PomodoroTimerReset(
      currentTime: currentTime == freezed
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_PomodoroTimerReset
    with DiagnosticableTreeMixin
    implements _PomodoroTimerReset {
  const _$_PomodoroTimerReset({required this.currentTime});

  @override
  final Duration currentTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroState.reset(currentTime: $currentTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PomodoroState.reset'))
      ..add(DiagnosticsProperty('currentTime', currentTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PomodoroTimerReset &&
            const DeepCollectionEquality()
                .equals(other.currentTime, currentTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentTime));

  @JsonKey(ignore: true)
  @override
  _$$_PomodoroTimerResetCopyWith<_$_PomodoroTimerReset> get copyWith =>
      __$$_PomodoroTimerResetCopyWithImpl<_$_PomodoroTimerReset>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration timer) paused,
    required TResult Function(Duration currentDuration) decrementing,
    required TResult Function(Duration currentTime) reset,
    required TResult Function(TimerType setTimerType) setTimerType,
  }) {
    return reset(currentTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration timer)? paused,
    TResult Function(Duration currentDuration)? decrementing,
    TResult Function(Duration currentTime)? reset,
    TResult Function(TimerType setTimerType)? setTimerType,
  }) {
    return reset?.call(currentTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration timer)? paused,
    TResult Function(Duration currentDuration)? decrementing,
    TResult Function(Duration currentTime)? reset,
    TResult Function(TimerType setTimerType)? setTimerType,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(currentTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PomodoroInitial value) initial,
    required TResult Function(_PomodoroTimerPaused value) paused,
    required TResult Function(_PomodoroTimerDecrementing value) decrementing,
    required TResult Function(_PomodoroTimerReset value) reset,
    required TResult Function(_PomodoroTimerChange value) setTimerType,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroTimerPaused value)? paused,
    TResult Function(_PomodoroTimerDecrementing value)? decrementing,
    TResult Function(_PomodoroTimerReset value)? reset,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroTimerPaused value)? paused,
    TResult Function(_PomodoroTimerDecrementing value)? decrementing,
    TResult Function(_PomodoroTimerReset value)? reset,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _PomodoroTimerReset implements PomodoroState {
  const factory _PomodoroTimerReset({required final Duration currentTime}) =
      _$_PomodoroTimerReset;

  Duration get currentTime => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PomodoroTimerResetCopyWith<_$_PomodoroTimerReset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PomodoroTimerChangeCopyWith<$Res> {
  factory _$$_PomodoroTimerChangeCopyWith(_$_PomodoroTimerChange value,
          $Res Function(_$_PomodoroTimerChange) then) =
      __$$_PomodoroTimerChangeCopyWithImpl<$Res>;
  $Res call({TimerType setTimerType});
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
    Object? setTimerType = freezed,
  }) {
    return _then(_$_PomodoroTimerChange(
      setTimerType: setTimerType == freezed
          ? _value.setTimerType
          : setTimerType // ignore: cast_nullable_to_non_nullable
              as TimerType,
    ));
  }
}

/// @nodoc

class _$_PomodoroTimerChange
    with DiagnosticableTreeMixin
    implements _PomodoroTimerChange {
  const _$_PomodoroTimerChange({required this.setTimerType});

  @override
  final TimerType setTimerType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroState.setTimerType(setTimerType: $setTimerType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PomodoroState.setTimerType'))
      ..add(DiagnosticsProperty('setTimerType', setTimerType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PomodoroTimerChange &&
            const DeepCollectionEquality()
                .equals(other.setTimerType, setTimerType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(setTimerType));

  @JsonKey(ignore: true)
  @override
  _$$_PomodoroTimerChangeCopyWith<_$_PomodoroTimerChange> get copyWith =>
      __$$_PomodoroTimerChangeCopyWithImpl<_$_PomodoroTimerChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration timer) paused,
    required TResult Function(Duration currentDuration) decrementing,
    required TResult Function(Duration currentTime) reset,
    required TResult Function(TimerType setTimerType) setTimerType,
  }) {
    return setTimerType(this.setTimerType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration timer)? paused,
    TResult Function(Duration currentDuration)? decrementing,
    TResult Function(Duration currentTime)? reset,
    TResult Function(TimerType setTimerType)? setTimerType,
  }) {
    return setTimerType?.call(this.setTimerType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration timer)? paused,
    TResult Function(Duration currentDuration)? decrementing,
    TResult Function(Duration currentTime)? reset,
    TResult Function(TimerType setTimerType)? setTimerType,
    required TResult orElse(),
  }) {
    if (setTimerType != null) {
      return setTimerType(this.setTimerType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PomodoroInitial value) initial,
    required TResult Function(_PomodoroTimerPaused value) paused,
    required TResult Function(_PomodoroTimerDecrementing value) decrementing,
    required TResult Function(_PomodoroTimerReset value) reset,
    required TResult Function(_PomodoroTimerChange value) setTimerType,
  }) {
    return setTimerType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroTimerPaused value)? paused,
    TResult Function(_PomodoroTimerDecrementing value)? decrementing,
    TResult Function(_PomodoroTimerReset value)? reset,
    TResult Function(_PomodoroTimerChange value)? setTimerType,
  }) {
    return setTimerType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PomodoroInitial value)? initial,
    TResult Function(_PomodoroTimerPaused value)? paused,
    TResult Function(_PomodoroTimerDecrementing value)? decrementing,
    TResult Function(_PomodoroTimerReset value)? reset,
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
  const factory _PomodoroTimerChange({required final TimerType setTimerType}) =
      _$_PomodoroTimerChange;

  TimerType get setTimerType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PomodoroTimerChangeCopyWith<_$_PomodoroTimerChange> get copyWith =>
      throw _privateConstructorUsedError;
}
