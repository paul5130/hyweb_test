import 'package:hyweb_test/models/location.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:hyweb_test/models/records.dart';
import 'package:dio/dio.dart';
part 'location_list_provider.g.dart';

@riverpod
Future<List<Location>> fetchLocationList(Ref ref) async {
  final dio = Dio();
  try {
    final response = await dio.get(
      'https://opendata.cwa.gov.tw/api/v1/rest/datastore/F-C0032-001',
      options: Options(
        headers: {'Authorization': 'CWA-ADC5AC7F-BF97-4B1A-A2CD-F16F190ABA1D'},
      ),
    );
    if (response.statusCode == 200) {
      await Future.delayed(const Duration(seconds: 1));
      final data = response.data as Map<String, dynamic>;
      final record = Records.fromJson(data['records'] as Map<String, dynamic>);
      return record.location;
    } else {
      throw Exception(
        'Failed to load location list: HTTP ${response.statusCode}',
      );
    }
  } catch (e, st) {
    throw AsyncError(e, st);
  }
}
