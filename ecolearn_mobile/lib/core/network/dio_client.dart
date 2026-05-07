import 'package:dio/dio.dart';
import '../config/constants.dart';

class DioClient {
  late Dio _dio;
  
  DioClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.apiBaseUrl,
        connectTimeout: const Duration(milliseconds: AppConstants.connectTimeout),
        receiveTimeout: const Duration(milliseconds: AppConstants.receiveTimeout),
        contentType: 'application/json',
        validateStatus: (status) => status! < 500,
      ),
    );
    
    // Add interceptors
    _dio.interceptors.add(_ErrorInterceptor());
    _dio.interceptors.add(_AuthInterceptor());
  }
  
  Dio get dio => _dio;
  
  Future<Response> get(String path) async {
    return _dio.get(path);
  }
  
  Future<Response> post(String path, dynamic data) async {
    return _dio.post(path, data: data);
  }
  
  Future<Response> put(String path, dynamic data) async {
    return _dio.put(path, data: data);
  }
  
  Future<Response> delete(String path) async {
    return _dio.delete(path);
  }
}

class _ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('🔴 API Error: ${err.message}');
    handler.next(err);
  }
}

class _AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Add auth token if available
    options.headers['Accept'] = 'application/json';
    handler.next(options);
  }
}
