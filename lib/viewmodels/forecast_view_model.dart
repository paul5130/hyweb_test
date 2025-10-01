import 'package:hyweb_test/models/weather_element.dart';
import 'package:hyweb_test/models/weather_time.dart';

class ForecastViewModel {
  final List<WeatherTime> weatherDescriptions; // Wx
  final List<WeatherTime> rainProbabilities; // PoP
  final List<WeatherTime> minTemperatures; // MinT
  final List<WeatherTime> maxTemperatures; // MaxT
  final List<WeatherTime> comfortIndices; // CI

  ForecastViewModel({
    required this.weatherDescriptions,
    required this.rainProbabilities,
    required this.minTemperatures,
    required this.maxTemperatures,
    required this.comfortIndices,
  });

  factory ForecastViewModel.fromElements(List<WeatherElement> elements) {
    List<WeatherTime> find(String key) =>
        elements.firstWhere((e) => e.elementName == key).time;

    return ForecastViewModel(
      weatherDescriptions: find("Wx"),
      rainProbabilities: find("PoP"),
      minTemperatures: find("MinT"),
      maxTemperatures: find("MaxT"),
      comfortIndices: find("CI"),
    );
  }
}
