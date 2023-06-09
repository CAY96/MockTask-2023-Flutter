import 'package:mock_task_2023_flutter/data/entity/count_by_keyword_response.dart';
import 'package:mock_task_2023_flutter/data/entity/mood_time_table_response.dart';
import 'package:mock_task_2023_flutter/data/sources/remote/http_service.dart';
import 'package:mock_task_2023_flutter/di.dart';
import 'package:mock_task_2023_flutter/utils/extensions/datetime.dart';

class ReportRepository {
  final _client = inject<HttpService>().reportClient;

  Future<Map<int, int>> countByMood(DateTime from, DateTime to) async {
    return await _client.countByMood(from.serverFormattedDateTime(), to.serverFormattedDateTime());
  }

  Future<List<CountByKeywordResponse>> countByEmotion(DateTime from, DateTime to, int limit) async {
    return (await _client.countByEmotion(from.serverFormattedDateTime(), to.serverFormattedDateTime(), limit)).result;
  }

  Future<List<CountByKeywordResponse>> countByEvent(DateTime from, DateTime to, int limit, List<int> containKeywords) async {
    return (await _client.countByEvent(from.serverFormattedDateTime(), to.serverFormattedDateTime(), limit, containKeywords.join(","))).result;
  }

  Future<Map<String, int>> countByTimeSlot(DateTime from, DateTime to, List<int> containKeywords) async {
    return await _client.countByTimeSlot(from.serverFormattedDateTime(), to.serverFormattedDateTime(), containKeywords.join(","));
  }

  Future<MoodTimeTableResponse> moodTimeTable(DateTime from, DateTime to) async {
    return await _client.moodTimeTable(from.serverFormattedDateTime(), to.serverFormattedDateTime());
  }
}
