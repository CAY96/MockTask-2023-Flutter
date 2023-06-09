import 'package:flutter/material.dart';
import 'package:mock_task_2023_flutter/di.dart' as di;
import 'package:mock_task_2023_flutter/ui/report_page/report_page.dart';

void main() async {
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ReportPage());
  }
}
