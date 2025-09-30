// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'records.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Records _$RecordsFromJson(Map<String, dynamic> json) => Records(
  datasetDescription: json['datasetDescription'] as String,
  location: (json['location'] as List<dynamic>)
      .map((e) => Location.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$RecordsToJson(Records instance) => <String, dynamic>{
  'datasetDescription': instance.datasetDescription,
  'location': instance.location.map((e) => e.toJson()).toList(),
};
