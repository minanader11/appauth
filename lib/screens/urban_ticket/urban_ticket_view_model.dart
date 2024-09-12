import 'package:flutter/material.dart';
import '../../repository/urban_ticket_repository.dart';
import '../../network_api/moova_api/apiTicketManager.swagger.dart';
//import '../../model/transportation/product.dart';

// Create the TransportListViewModel class and extend it with ChangeNotifier to enable state management.
class UrbanTicketViewModel with ChangeNotifier {
  // Constructor to initialize the TransportListViewModel with the LoginRepository instance.
  UrbanTicketViewModel({required this.urbanTicketRepository});
  // Instance of the TransportListRepository class to interact with the user login data.
  final UrbanTicketRepository urbanTicketRepository;

  List<Product>? _response;
  List<Product>? get response => _response;

  String? _urbanTicketError;
  bool _isLoading = false;

  String? get loginError => _urbanTicketError;
  bool get isLoading => _isLoading;

  Future<List<Product>?> urbanTicketList() async {
    _isLoading = true;
    notifyListeners();
    try {
      _response = await urbanTicketRepository.urbanTicketList();
      return _response;
    } catch (e) {
      _urbanTicketError = e.toString();
    }
    _isLoading = false;
    notifyListeners();
    return null;
  }
}
