import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:cairo/utils/globals.dart' as globals;
import '../model/manager/manager_app.dart';
import '../network_api/moova_api/apiTicketManager.swagger.dart';
//import '../model/transportation/product.dart';

class ApiService {
  late Dio _dio; // Dio instance to perform HTTP requests.

  ApiService({required Dio dio}) {
    _dio = Dio(BaseOptions(
      baseUrl: ManagerApp().getConfig().serverApiUrl,
       connectTimeout: const Duration(seconds:5),
       receiveTimeout: const Duration(seconds: 3),
      responseType: ResponseType.json,
      contentType: 'application/json'
    ))
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            // Add the access token to the request header
            String token = globals.user.accessToken; //replace global variable with save in storage
            options.headers.putIfAbsent('Authorization', () => "Bearer XXX");
            options.headers['Content-Type'] = "application/json";
            options.headers['X-WTF-PROFILE'] = "XXX";
            options.headers['X-WTF-LANG'] = "XXX";

            return handler.next(options);
          },
          onError: (DioException e, handler) async {
            if (e.response?.statusCode == 401) {
              // If a 401 response is received, refresh the access token
              String newAccessToken = await refreshToken();

              // Update the request header with the new access token
              e.requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';

              // Repeat the request with the updated header
              return handler.resolve(await dio.fetch(e.requestOptions));
            }
            return handler.next(e);
          },
        ),
      );
  }

  Future<String> refreshToken() async {
    // Perform a request to the refresh token endpoint and return the new access token.
    // You can replace this with your own implementation.
    return 'new_access_token';
  }

  Future<String?> loginUser(Map<dynamic, dynamic> req) async {
    try {
      _dio.interceptors.clear();
      final dioAdapter = DioAdapter(dio: _dio);
      dioAdapter.onGet(
        ManagerApp().getConfig().baseUrlTicketing,
        (server) => server.reply(
          200,
          {'message': 'Success!'},
          // Delay the response by 1 second
          delay: const Duration(seconds: 1),
        ),
      );
      final response =
          await _dio.get(ManagerApp().getConfig().baseUrlTicketing);

      if (response.statusCode == 200) {
        // Success
        // Check if 'token' key exists in the response data
        if (response.data != null) {
          //if (response.data.containsKey('access_token') == true)
          return 'OK';
        }
        // If 'error' key doesn't exist, return a generic error message
        return 'An error occurred';
      } else {
        // Handle other status codes as needed
        return 'Failed to login';
      }
    } catch (e) {
      if (e is DioException) {
        if (e.response != null &&
            e.response!.data != null &&
            e.response!.data['error'] != null) {
          final errorMessage = e.response!.data['error'];
          print('Error Message: $errorMessage');
          return errorMessage.toString();
        }
      }
      // Handle other errors or exceptions
      print('Error: $e');
      return null;
    }
  }

  Future<List<Product>?> urbanTicketList() async {
    try {
      String mockResponse = await rootBundle
          .loadString('assets/mock/api_moova_products_mock.json');
      final dioAdapter = DioAdapter(dio: _dio);
      dioAdapter.onPost(
        ManagerApp().getConfig().baseUrlTicketing,
        (server) => server.reply(200, mockResponse),
      );
      final response =
          await _dio.post(ManagerApp().getConfig().baseUrlTicketing);

      //GET call with parameters
      /*final response = await _dio.get(ManagerApp().getConfig().baseUrlTicketing, queryParameters: {
        "key": "value",
        "key": "value"
      });*/

      if (response.statusCode == 200) {
        // Success
        // Check if 'token' key exists in the response data
        if (response.data != null) {
          //if (response.data.containsKey('access_token') == true) {
          if (response.data is String) {//MOCK
            return List.from(json.decode(response.data)).map((e)=>Product.fromJson(e)).toList();
          } else {
            return List.from(response.data).map((e)=>Product.fromJson(e)).toList();
          }
        }
        // If 'error' key doesn't exist, return a generic error message
        return null;
      } else {
        // Handle other status codes as needed
        return null;
      }
    } catch (e) {
      if (e is DioException) {
        if (e.response != null &&
            e.response!.data != null &&
            e.response!.data['error'] != null) {
          final errorMessage = e.response!.data['error'];
          return null;
        }
      }
      return null;
    }
  }
}
