
import 'package:flutter/cupertino.dart';
import 'package:mock_task_2023_flutter/data/repository/report_repository.dart';
import 'package:mock_task_2023_flutter/di.dart';
import 'package:mock_task_2023_flutter/domain/usecase/report_usecase/report_usecase.dart';
import 'package:mock_task_2023_flutter/domain/usecase/user_usecase/user_usecase.dart';

class ReportViewModel extends ChangeNotifier {
  final _reportUsecase = inject<ReportUsecase>();
  final _userUsecase = inject<UserUsecase>();

  ReportViewModel() {
    login();
  }

  Future<void> login() async {
    try {
      await _userUsecase.loginGuest();
    } catch (e) {
      print("login failed: $e");
      rethrow;
    }
  }
}