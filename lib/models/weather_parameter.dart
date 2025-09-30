import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_parameter.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class WeatherParameter extends Equatable {
  const WeatherParameter({required this.parameterName, this.parameterValue});
  final String parameterName;
  final String? parameterValue;

  factory WeatherParameter.fromJson(Map<String, dynamic> json) =>
      _$WeatherParameterFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherParameterToJson(this);

  @override
  List<Object?> get props => [parameterName, parameterValue];
}
