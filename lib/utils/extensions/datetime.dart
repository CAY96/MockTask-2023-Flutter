import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String serverFormattedDateTime() => DateFormat("yyyy-MM-dd HH:mm:ss").format(this);
}