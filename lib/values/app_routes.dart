import 'package:flutter/material.dart';

import '../screens/login/login_view.dart';
import '../screens/urban_ticket/urban_ticket_view.dart';
import '../widgets/ticket_type.dart';


class AppRoutes {
  static const String loginPage = '/login';
  static const String ticketType = '/ticketType';
  static const String urbanTicketList = '/urbanTicketList';
  static Route<dynamic> generateRoute(RouteSettings settings)
  {
    switch (settings.name)
    {
      case loginPage:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case ticketType:
        return MaterialPageRoute(builder: (context) => const TicketType());
      case urbanTicketList:
        return MaterialPageRoute(builder: (context) => const UrbanTicketView());
      default:
        return MaterialPageRoute(builder: (context) => const LoginView());
    }
  }
}
