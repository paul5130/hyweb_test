import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:hyweb_test/models/weather_element.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class Location extends Equatable {
  const Location({required this.locationName, required this.weatherElement});
  final String locationName;
  final List<WeatherElement> weatherElement;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  List<Object?> get props => [locationName, weatherElement];
}
