import 'package:hyweb_test/pages/widgets/weather_state.dart';
import 'package:hyweb_test/providers/location_list_provider.dart';
import 'package:hyweb_test/viewmodels/forecast_view_model.dart';
import 'package:hyweb_test/viewmodels/weather_card_viewmodel.dart';
import 'package:hyweb_test/viewmodels/weather_result_viewmodel.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_state_result.g.dart';

@Riverpod(keepAlive: true)
class WeatherStateResult extends _$WeatherStateResult {
  late List<WeatherCardViewModel> _allData;

  @override
  Future<WeatherState> build() async {
    try {
      final locationList = await ref.watch(fetchLocationListProvider.future);
      final List<WeatherCardViewModel> list = [];

      if (locationList.isNotEmpty) {
        for (var location in locationList) {
          final forecast = ForecastViewModel.fromElements(
            location.weatherElement,
          );

          final weatherResultViewModels = <WeatherResultViewModel>[];
          final length = forecast.weatherDescriptions.length;

          for (var i = 0; i < length; i++) {
            final weatherResultViewModel = WeatherResultViewModel(
              cityName: location.locationName,
              startTime: DateFormat(
                "MM/dd HH:mm",
              ).format(forecast.weatherDescriptions[i].startDateTime),
              endTime: DateFormat(
                "MM/dd HH:mm",
              ).format(forecast.weatherDescriptions[i].endDateTime),
              description:
                  forecast.weatherDescriptions[i].parameter.parameterName,
              rainProbability:
                  '${forecast.rainProbabilities[i].parameter.parameterName} %',
              maxTemperature:
                  '${forecast.maxTemperatures[i].parameter.parameterName} °C',
              minTemperature:
                  '${forecast.minTemperatures[i].parameter.parameterName} °C',
              comfortIndex: forecast.comfortIndices[i].parameter.parameterName,
            );
            weatherResultViewModels.add(weatherResultViewModel);
          }

          list.add(
            WeatherCardViewModel(
              weatherResultViewModels: weatherResultViewModels,
            ),
          );
        }

        _allData = list;

        return WeatherState.idle();
      }

      _allData = [];
      return WeatherState.error('No location found');
    } catch (e) {
      return WeatherState.error(e.toString());
    }
  }

  void filterByCity(String query) async {
    state = const AsyncData(WeatherState.loading());
    await Future.delayed(const Duration(seconds: 1));
    if (query.isEmpty) {
      state = AsyncData(WeatherState.idle());
    } else {
      final lowerQuery = query.toLowerCase();
      final filteredList = _allData
          .where(
            (e) => e.weatherResultViewModels.any(
              (element) => element.cityName.toLowerCase().contains(lowerQuery),
            ),
          )
          .toList();
      if (filteredList.isNotEmpty) {
        state = AsyncData(
          WeatherState.result(weatherCardViewModel: filteredList.first),
        );
      } else {
        state = AsyncData(WeatherState.error('沒有符合條件的資料'));
      }
    }
  }
}
