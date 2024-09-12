import 'package:cairo/utils/extensions.dart';
import 'package:flutter/material.dart';

import '../resources/images.dart';
import '../values/app_colors.dart';
import '../values/app_routes.dart';

class TicketType extends StatelessWidget {
  const TicketType({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Ticket types"),
          backgroundColor: AppColors.appBarColor,
          elevation: 50,
          shadowColor: const Color(0xff0C1C2E),
          toolbarHeight: 100,
        ),
        body: Stack(
          children: [
            Positioned(
              child: Image.asset(
                Images.bus,
                opacity: const AlwaysStoppedAnimation(.15),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  FilledButton(
                      onPressed: () {
                        AppRoutes.urbanTicketList.pushName();
                      },
                      style: Theme.of(context).filledButtonTheme.style,
                      child: const Text('Urban Ticket'),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  FilledButton(
                      onPressed: () {},
                      style: Theme.of(context).filledButtonTheme.style,
                      child: const Text('Extra-urban Ticket')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
