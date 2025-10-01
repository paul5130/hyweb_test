import 'package:hyweb_test/pages/widgets/weather_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_state_resullt.g.dart';

@Riverpod(keepAlive: true)
class WeatherStateResullt extends _$WeatherStateResullt {
  @override
  Future<WeatherState> build() async {
    return WeatherState.idle();
  }
}
