import 'package:dio/dio.dart';
import 'retrofit_client.dart';

class ApiService {
  final RetrofitClient _client;

  ApiService(Dio dio)
      : _client = RetrofitClient(dio);

  RetrofitClient get client => _client;
}
