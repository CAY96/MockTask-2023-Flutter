// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mood_time_table_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoodTimeTableResponse _$$_MoodTimeTableResponseFromJson(
        Map<String, dynamic> json) =>
    _$_MoodTimeTableResponse(
      mon: (json['mon'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num?)?.toDouble()),
      ),
      tue: (json['tue'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num?)?.toDouble()),
      ),
      wed: (json['wed'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num?)?.toDouble()),
      ),
      thu: (json['thu'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num?)?.toDouble()),
      ),
      fri: (json['fri'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num?)?.toDouble()),
      ),
      sat: (json['sat'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num?)?.toDouble()),
      ),
      sun: (json['sun'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num?)?.toDouble()),
      ),
    );

Map<String, dynamic> _$$_MoodTimeTableResponseToJson(
        _$_MoodTimeTableResponse instance) =>
    <String, dynamic>{
      'mon': instance.mon,
      'tue': instance.tue,
      'wed': instance.wed,
      'thu': instance.thu,
      'fri': instance.fri,
      'sat': instance.sat,
      'sun': instance.sun,
    };
