import 'package:ezriegoapp/constants/app_theme.dart';
import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/controllers.dart';

void main() {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EZriego',
      initialBinding: ControllerBinding(),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.routes,
      theme: AppTheme.temaLight.copyWith(primaryColor: ColorSettings.primario),
    );
  }
}
