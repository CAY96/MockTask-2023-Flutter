import 'package:get_it/get_it.dart';
import 'package:mock_task_2023_flutter/data/repository/register_repository.dart';
import 'package:mock_task_2023_flutter/data/repository/report_repository.dart';
import 'package:mock_task_2023_flutter/data/sources/remote/http_service.dart';
import 'package:mock_task_2023_flutter/data/sources/remote/secure_storage.dart';
import 'package:mock_task_2023_flutter/domain/usecase/report_usecase/report_usecase.dart';
import 'package:mock_task_2023_flutter/domain/usecase/report_usecase/report_usecsae_impl.dart';
import 'package:mock_task_2023_flutter/domain/usecase/user_usecase/user_usecase.dart';
import 'package:mock_task_2023_flutter/domain/usecase/user_usecase/user_usecase_impl.dart';

final GetIt inject = GetIt.instance;

Future<void> init() async {
  inject.registerLazySingleton(() => HttpService());
  inject.registerLazySingleton(() => SecureStorageService());
  inject.registerLazySingleton(() => ReportRepository());
  inject.registerLazySingleton(() => RegisterRepository());
  inject.registerLazySingleton<ReportUsecase>(() => ReportUsecaseImpl());
  inject.registerLazySingleton<UserUsecase>(() => UserUsecaseImpl());
}
