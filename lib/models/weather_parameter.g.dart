// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherParameter _$WeatherParameterFromJson(Map<String, dynamic> json) =>
    WeatherParameter(
      parameterName: json['parameterName'] as String,
      parameterValue: json['parameterValue'] as String?,
    );

Map<String, dynamic> _$WeatherParameterToJson(WeatherParameter instance) =>
    <String, dynamic>{
      'parameterName': instance.parameterName,
      'parameterValue': instance.parameterValue,
    };
