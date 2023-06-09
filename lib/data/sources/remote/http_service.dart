import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:mock_task_2023_flutter/data/sources/remote/register_client.dart';
import 'package:mock_task_2023_flutter/data/sources/remote/report_client.dart';
import 'package:mock_task_2023_flutter/data/sources/remote/secure_storage.dart';
import 'package:mock_task_2023_flutter/di.dart';

class HttpService {
  final _storageService = inject<SecureStorageService>();
  late Dio _dio;
  late Dio _openDio;

  get reportClient => ReportClient(_dio);

  get registerClient => RegisterClient(_openDio);

  HttpService() {
    var options = BaseOptions(
      contentType: 'application/json',
      baseUrl: "https://littlelighthouse-378304.uc.r.appspot.com/",
      receiveTimeout: 10 * 1000,
    );
    _dio = initInterceptors(Dio(options));
    _openDio = Dio(options);
  }

  initDios() {
    _dio = initInterceptors(_dio);
  }

  Dio initInterceptors(Dio dio) {
    dio.interceptors.clear();
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (request, requestInterceptorHandler) async {
        debugPrint("${request.method} | ${request.path} | ${request.data} | ${request.queryParameters}");

        request = await _addRequestHeader(request);

        return requestInterceptorHandler.next(request);
      },
      onResponse: (Response response, responseInterceptorHandler) {
        debugPrint('${response.requestOptions.method} | ${response.requestOptions.path} | '
            '${response.statusCode} | ${response.data}');

        return responseInterceptorHandler.next(response);
      },
      onError: (error, errorInterceptorHandler) async {
        debugPrint('Error: ${error.requestOptions.method} | ${error.requestOptions.path} | '
            '${error.response?.statusCode} | ${error.response?.statusMessage} | ${error.response?.data}');

        return errorInterceptorHandler.next(error);
      },
    ));

    return dio;
  }

  Future<RequestOptions> _addRequestHeader(RequestOptions request) async {
    final accessToken = await _storageService.read(SecureStorageKey.accessToken);
    if (accessToken != null) request.headers['Cookie'] = 'access_token=$accessToken';

    return request;
  }
}
