// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherTime _$WeatherTimeFromJson(Map<String, dynamic> json) => WeatherTime(
  startTime: json['startTime'] as String,
  endTime: json['endTime'] as String,
  parameter: WeatherParameter.fromJson(
    json['parameter'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$WeatherTimeToJson(WeatherTime instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'parameter': instance.parameter.toJson(),
    };
