import 'package:hyweb_test/pages/widgets/weather_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_state_resullt.g.dart';

@Riverpod(keepAlive: true)
class WeatherStateResullt extends _$WeatherStateResullt {
  @override
  Future<WeatherState> build() async {
    return _fetchData();
  }

  Future<WeatherState> _fetchData() async {
    // final locationList = await _fetchLocationList();
    // TODO: conver to WeatherResultViewModel
    return WeatherState.loading();
  }

  // Future<List<Location>> _fetchLocationList() async {
  //   final locationList = await ref.read(fetchLocationListProvider.future);
  //   return locationList;
  // }
}
