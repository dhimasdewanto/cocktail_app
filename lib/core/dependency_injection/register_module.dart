import 'package:cocktail_app/core/app_settings.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => _initDio;

  Dio get _initDio {
    final dio = Dio();
    dio.options.baseUrl = AppSettings.baseUrl;
    return dio;
  }
}