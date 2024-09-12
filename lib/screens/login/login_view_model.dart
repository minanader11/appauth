import 'package:cairo/utils/extensions.dart';
import 'package:flutter/material.dart';

import '../../repository/dummy_login_repository.dart';
import '../../values/app_routes.dart';

// Create the LoginViewModel class and extend it with ChangeNotifier to enable state management.
class LoginViewModel with ChangeNotifier {

  // Constructor to initialize the LoginViewModel with the LoginRepository instance.
  LoginViewModel({required this.userRepository});
  // Instance of the LoginRepository class to interact with the user login data.
  final DummyLoginRepository userRepository;

  String? _response;
  String? get response => _response;

  String? _loginError;
  bool _isLoading = false;

  String? get loginError => _loginError;
  bool get isLoading => _isLoading;

  Future<void> login(Map<dynamic, dynamic> req) async {
    _isLoading = true;
    notifyListeners();

    try {
      _response = await userRepository.login(req);

      if (_response == 'OK')
      {
        AppRoutes.ticketType.pushName();
      }
      _loginError = null;
    } catch (e) {
      _loginError = e.toString();
    }

    _isLoading = false;
    notifyListeners();
  }
}