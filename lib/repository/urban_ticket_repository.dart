import '../services/api_service.dart';
import '../network_api/moova_api/apiTicketManager.swagger.dart';
//import '../model/transportation/product.dart';

class UrbanTicketRepository {
  // Instance of the ApiService class to perform API requests.

  UrbanTicketRepository({required this.apiService});

  final ApiService apiService;

  Future<List<Product>?> urbanTicketList() async {
    try {
      final response = await apiService.urbanTicketList();

      return response;
    } catch (e) {
      throw Exception('Failed to login');
    }
  }
}
