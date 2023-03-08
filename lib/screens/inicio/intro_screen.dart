import 'package:ezriegoapp/constants/colores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});
  static const String ruta = '/intro_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              tileMode: TileMode.mirror,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            ColorSettings.backgroundIntroTop,
            ColorSettings.backgroundIntroTop
          ],
              stops: [
            0.9,
            1
          ])),
      child: SafeArea(
          child: Stack(
        children: [
          Positioned(
            top: 5,
            right: -300,
            child: SvgPicture.asset(
              'assets/svg/leaf.svg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.98,
            ),
          ),
          const Center(child: Text('Bienvenido')),
        ],
      )),
    ));
  }
}
