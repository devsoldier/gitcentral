import 'package:dio/dio.dart';
import 'dio_config.dart';

abstract class ApiService {
  Future<Response> authRequest(
    RequestMethod method,
    String path, {
    Map<String, dynamic>? body,
  });

  Future<Response> makeRequest(
    RequestMethod method,
    String path, {
    Map<String, dynamic>? body,
  });
}
