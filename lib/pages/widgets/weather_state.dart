import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyweb_test/viewmodels/weather_card_viewmodel.dart';

part 'weather_state.freezed.dart';

@freezed
sealed class WeatherState with _$WeatherState {
  const factory WeatherState.idle() = WeatherStateIdle;
  const factory WeatherState.loading() = WeatherStateLoading;
  const factory WeatherState.error(String message) = WeatherStateError;
  const factory WeatherState.result({
    required WeatherCardViewModel weatherCardViewModel,
  }) = WeatherStateResult;
}
