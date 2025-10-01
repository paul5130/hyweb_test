class WeatherResultViewModel {
  WeatherResultViewModel({
    required this.cityName,
    required this.startTime,
    required this.endTime,
    required this.description,
    required this.rainProbability,
    required this.maxTemperature,
    required this.minTemperature,
    required this.comfortIndex,
  });
  final String cityName;
  final String startTime;
  final String endTime;
  final String description;
  final String rainProbability;
  final String maxTemperature;
  final String minTemperature;
  final String comfortIndex;
}
