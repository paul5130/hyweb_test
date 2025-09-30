// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherElement _$WeatherElementFromJson(Map<String, dynamic> json) =>
    WeatherElement(
      elementName: json['elementName'] as String,
      time: (json['time'] as List<dynamic>)
          .map((e) => WeatherTime.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeatherElementToJson(WeatherElement instance) =>
    <String, dynamic>{
      'elementName': instance.elementName,
      'time': instance.time.map((e) => e.toJson()).toList(),
    };
