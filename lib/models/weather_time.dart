import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:hyweb_test/models/weather_parameter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_time.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class WeatherTime extends Equatable {
  const WeatherTime({
    required this.startTime,
    required this.endTime,
    required this.parameter,
  });
  final String startTime;
  final String endTime;
  final WeatherParameter parameter;

  DateTime get startDateTime => DateTime.parse(startTime.replaceAll(' ', 'T'));
  DateTime get endDateTime => DateTime.parse(endTime.replaceAll(' ', 'T'));

  factory WeatherTime.fromJson(Map<String, dynamic> json) =>
      _$WeatherTimeFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherTimeToJson(this);

  @override
  List<Object?> get props => [startTime, endTime, parameter];
}
