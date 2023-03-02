import 'package:ezriegoapp/constants/colores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String ruta = '/splash_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSettings.primario,
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [
              ColorTween(
                      begin: ColorSettings.primario,
                      end: ColorSettings.secundario)
                  .lerp(0.23)!,
              ColorTween(
                      begin: ColorSettings.primario,
                      end: ColorSettings.secundario)
                  .lerp(0.9)!,
            ])),
        child: Stack(
          children: [
            Center(child: SvgPicture.asset('assets/svg/logo.svg')),
            Positioned(
              left: 3,
              right: 3,
              top: -40,
              child: SvgPicture.asset('assets/svg/leaf.svg'),
            )
          ],
        ),
      )),
    );
  }
}
