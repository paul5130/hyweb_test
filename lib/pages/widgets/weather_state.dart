import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyweb_test/viewmodels/weather_card_viewmodel.dart';

part 'weather_state.freezed.dart';

@freezed
sealed class WeatherState with _$WeatherState {
  const factory WeatherState.list({required List<WeatherCardViewModel> list}) =
      WeatherStateList;
  const factory WeatherState.result({
    required WeatherCardViewModel weatherCardViewModel,
  }) = WeatherStateResult;
}
