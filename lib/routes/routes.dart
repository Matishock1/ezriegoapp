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
        page: () => IntroScreen(),
        transition: Transition.cupertino),
    GetPage(
        name: TabScreen.ruta,
        page: () => TabScreen(),
        transition: Transition.cupertino),
    GetPage(
        name: EstadoSueloScreen.ruta,
        page: () => const EstadoSueloScreen(),
        transition: Transition.cupertino),
    GetPage(
        name: DetalleReporteScreen.ruta,
        page: () => const DetalleReporteScreen(),
        transition: Transition.cupertino),
    GetPage(
        name: ProgramarSectoresScreen.ruta,
        page: () => const ProgramarSectoresScreen(),
        transition: Transition.cupertino),
    GetPage(
        name: NotificacionesScreen.ruta,
        page: () => const NotificacionesScreen(),
        transition: Transition.cupertino),
    GetPage(
        name: HistorialScreen.ruta,
        page: () => const HistorialScreen(),
        transition: Transition.cupertino)
  ];
}
