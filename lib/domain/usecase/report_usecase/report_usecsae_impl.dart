import 'package:mock_task_2023_flutter/data/repository/report_repository.dart';
import 'package:mock_task_2023_flutter/di.dart';
import 'package:mock_task_2023_flutter/domain/usecase/report_usecase/report_usecase.dart';

class ReportUsecaseImpl implements ReportUsecase {
  final _repo = inject<ReportRepository>();
}
