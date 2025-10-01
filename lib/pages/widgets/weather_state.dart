import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyweb_test/pages/widgets/weather_state_ui.dart';

part 'weather_state.freezed.dart';

@freezed
sealed class WeatherState with _$WeatherState {
  const WeatherState._();
  const factory WeatherState.idle() = WeatherStateIdle;
  const factory WeatherState.loading() = WeatherStateLoading;
  const factory WeatherState.error({required String message}) =
      WeatherStateError;
  const factory WeatherState.result({
    required WeatherCardViewModel weatherCardViewModel,
  }) = WeatherStateResult;
}
