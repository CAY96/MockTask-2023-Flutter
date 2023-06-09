import 'package:dio/dio.dart';
import 'package:mock_task_2023_flutter/data/entity/count_by_keyword_response.dart';
import 'package:mock_task_2023_flutter/data/entity/mood_time_table_response.dart';
import 'package:mock_task_2023_flutter/data/entity/pagination_response.dart';
import 'package:retrofit/retrofit.dart';

part 'report_client.g.dart';

@RestApi()
abstract class ReportClient {
  factory ReportClient(Dio dio, {String baseUrl}) = _ReportClient;

  @GET("/records/statistics/count/mood-score/")
  Future<Map<int, int>> countByMood(@Query("from") String from, @Query("to") String to);

  @GET("/records/statistics/count/emotion/")
  Future<PaginationResponse<List<CountByKeywordResponse>>> countByEmotion(
      @Query("from") String from, @Query("to") String to, @Query("limit") int limit);

  @GET("/records/statistics/count/issue/")
  Future<PaginationResponse<List<CountByKeywordResponse>>> countByEvent(
      @Query("from") String from, @Query("to") String to, @Query("limit") int limit, @Query("contain_keywords") String containKeywords);

  @GET("/records/statistics/count/time-slot/")
  Future<Map<String, int>> countByTimeSlot(@Query("from") String from, @Query("to") String to, @Query("contain_keywords") String containKeywords);

  @GET("/records/statistics/mood-time-table/")
  Future<MoodTimeTableResponse> moodTimeTable(@Query("from") String from, @Query("to") String to);
}
