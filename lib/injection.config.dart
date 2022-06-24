// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/pomodoro_timer_app/data/data_sources/pomodoro_timer.dart'
    as _i4;
import 'features/pomodoro_timer_app/data/data_sources/timer.dart' as _i3;
import 'features/pomodoro_timer_app/data/repositories/pomodoro_timer.dart'
    as _i6;
import 'features/pomodoro_timer_app/domain/repositories/pomodoro_timer.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.TimerDataSource>(() => _i4.TimerDataSourceImpl());
  gh.lazySingleton<_i5.PomodoroTimerRepository>(
      () => _i6.PomodoroTimerRepositoryImpl(get<_i3.TimerDataSource>()));
  return get;
}
