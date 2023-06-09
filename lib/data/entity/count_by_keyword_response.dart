import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_by_keyword_response.freezed.dart';

part 'count_by_keyword_response.g.dart';

@freezed
class CountByKeywordResponse with _$CountByKeywordResponse {
  factory CountByKeywordResponse({
    required int keyword,
    required int count,
  }) = _CountByKeywordResponse;

  factory CountByKeywordResponse.fromJson(Map<String, dynamic> json) => _$CountByKeywordResponseFromJson(json);

  static List<CountByKeywordResponse> fromJsonList(List<dynamic> jsonList) => jsonList.map((json) => CountByKeywordResponse.fromJson(json)).toList();
}
