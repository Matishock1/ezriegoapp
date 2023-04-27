import 'package:ezriegoapp/constants/colores.dart';
import 'package:flutter/material.dart';

class FondoPantalla extends StatelessWidget {
  const FondoPantalla({super.key, required this.child, this.notSafeArea});

  final Widget child;
  final bool? notSafeArea;

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
            ColorSettings.backgroundAppTop,
            ColorSettings.backgroundAppBot
          ],
              stops: [
            0.9,
            1
          ])),
      child: notSafeArea != null ? child : SafeArea(child: child),
    ));
  }
}
