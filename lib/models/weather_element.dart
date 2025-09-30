import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:hyweb_test/models/weather_time.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_element.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class WeatherElement extends Equatable {
  const WeatherElement({required this.elementName, required this.time});
  final String elementName;
  final List<WeatherTime> time;
  factory WeatherElement.fromJson(Map<String, dynamic> json) =>
      _$WeatherElementFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherElementToJson(this);

  @override
  List<Object?> get props => [elementName, time];
}
