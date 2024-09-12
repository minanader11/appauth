import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'config/config_builder.dart';
import 'model/manager/manager_app.dart';
import 'values/app_constants.dart';
import 'values/app_routes.dart';
import 'values/app_theme.dart';

Future<void> main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();

  await ManagerApp().initApp(ConfigBuilder.buildConfig());

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
    ),
  );
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  ).then(
        (_) => runApp(
       const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Theme.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI',
      theme: AppTheme.themeData,
      initialRoute: AppRoutes.loginPage,
      navigatorKey: AppConstants.navigationKey,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}
