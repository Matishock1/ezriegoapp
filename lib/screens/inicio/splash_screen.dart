import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/screens/screens.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String ruta = '/splash_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSettings.primario,
      body: Container(
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
                  .lerp(0.1)!,
              ColorTween(
                      begin: ColorSettings.primario,
                      end: ColorSettings.secundario)
                  .lerp(0.8)!,
            ])),
        child: FutureBuilder(
            future: checkEstado(context),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Center(child: Text(snapshot.data));
              } else {
                return Stack(
                  children: [
                    const SplashAnimation(),
                    Positioned(
                      top: 55,
                      right: -290,
                      child: SvgPicture.asset(
                        'assets/svg/leaf.svg',
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.95,
                      ),
                    )
                  ],
                );
              }
            }),
      ),
    );
  }

  Future checkEstado(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 10));
    Get.offAllNamed(IntroScreen.ruta);
    return '';
  }
}
