import 'package:ezriegoapp/screens/screens.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String initialRoute = SplashScreen.ruta;

  static List<GetPage> routes = [
    GetPage(
        name: SplashScreen.ruta,
        page: () => const SplashScreen(),
        transition: Transition.cupertino),
    GetPage(
        name: IntroScreen.ruta,
        page: () => const IntroScreen(),
        transition: Transition.cupertino)
  ];
}
