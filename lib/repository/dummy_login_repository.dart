import '../services/api_service.dart';

class DummyLoginRepository { // Instance of the ApiService class to perform API requests.

  DummyLoginRepository({required this.apiService});
  final ApiService
  apiService;

  Future<String?> login(Map<dynamic, dynamic> req) async {
    try {
      final response = await apiService.loginUser(req);

      return response;
    } catch (e) {

      throw Exception('Failed to login');
    }
  }
}