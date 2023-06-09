import 'package:freezed_annotation/freezed_annotation.dart';

part 'mood_time_table_response.freezed.dart';

part 'mood_time_table_response.g.dart';

@freezed
class MoodTimeTableResponse with _$MoodTimeTableResponse {
  factory MoodTimeTableResponse({
    required Map<String, double?> mon,
    required Map<String, double?> tue,
    required Map<String, double?> wed,
    required Map<String, double?> thu,
    required Map<String, double?> fri,
    required Map<String, double?> sat,
    required Map<String, double?> sun,
  }) = _MoodTimeTableResponse;

  factory MoodTimeTableResponse.fromJson(Map<String, dynamic> json) => _$MoodTimeTableResponseFromJson(json);

  static List<MoodTimeTableResponse> fromJsonList(List<dynamic> jsonList) => jsonList.map((json) => MoodTimeTableResponse.fromJson(json)).toList();
}
