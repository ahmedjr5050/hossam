import 'package:dio/dio.dart';

class HomeRepo {
  static final Dio _dio = Dio();
  String baseUrl = 'https://mediq-graduation.onrender.com/api/v1/';
  String baseUrlLocal = 'https://mediq-graduation.onrender.com/api/v1/';

  Future<dynamic> signin(String endpoint, String email, String password) async {
    try {
      final response = await _dio.post(
        baseUrl + endpoint,
        data: {'username': email, 'password': password},
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
      return response.data;
    } catch (error) {
      throw error; // Rethrow the error to propagate it further if needed
    }
  }

  Future<dynamic> findalldoctor(String endpoint, String token) async {
    try {
      final response = await _dio.get(
        baseUrl + endpoint,
        options: Options(
          receiveTimeout: const Duration(
            seconds: 7,
          ),
          receiveDataWhenStatusError: true,
          sendTimeout: const Duration(seconds: 7),
          headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        }),
      );
      return response.data;
    } catch (error) {
      throw error; // Rethrow the error to propagate it further if needed
    }
  }

  Future<dynamic> breastcanser(
      String endpoint, String token, MultipartFile image) async {
    try {
      FormData formData = FormData.fromMap({
        'image': image,
      });

      final response = await _dio.post(
        baseUrlLocal + endpoint,
        data: formData,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      return response.data;
    } catch (error) {
      throw error; // Rethrow the error to propagate it further if needed
    }
  }
  Future<dynamic> braintumor(
      String endpoint, String token, MultipartFile image) async {
    try {
      FormData formData = FormData.fromMap({
        'image': image,
      });

      final response = await _dio.post(
        baseUrlLocal + endpoint,
        data: formData,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      return response.data;
    } catch (error) {
      throw error; // Rethrow the error to propagate it further if needed
    }
  }
  Future<dynamic> lungcancer(
      String endpoint, String token, MultipartFile image) async {
    try {
      FormData formData = FormData.fromMap({
        'image': image,
      });

      final response = await _dio.post(
        baseUrlLocal + endpoint,
        data: formData,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      return response.data;
    } catch (error) {
      throw error; // Rethrow the error to propagate it further if needed
    }
  }
}
