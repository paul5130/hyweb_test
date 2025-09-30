import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:hyweb_test/models/location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'records.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class Records extends Equatable {
  const Records({required this.datasetDescription, required this.location});
  final String datasetDescription;
  final List<Location> location;

  factory Records.fromJson(Map<String, dynamic> json) =>
      _$RecordsFromJson(json);

  Map<String, dynamic> toJson() => _$RecordsToJson(this);

  @override
  List<Object?> get props => [datasetDescription, location];
}
