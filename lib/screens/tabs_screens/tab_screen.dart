import 'dart:io';

import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/controllers.dart';
import '../../widgets/widgets.dart';

class TabScreen extends StatelessWidget {
  TabScreen({super.key});
  static const String ruta = '/tabs_screen';

  final TabsController tabController = Get.find<TabsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: tabController.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const TabHomecreen(),
          Scaffold(
            body: SafeArea(
              child: Column(children: const [CustomAppBar()]),
            ),
          ),
          Scaffold(
            body: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blue,
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottonNavigation(),
    );
  }
}

class BottonNavigation extends StatelessWidget {
  const BottonNavigation({Key? key}) : super(key: key);
  final double pading = 9.5;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Platform.isAndroid
            ? kBottomNavigationBarHeight
            : kBottomNavigationBarHeight + 15,
        color: ColorSettings.primario,
        child: GetBuilder<TabsController>(builder: (controlador) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BotonNavigator(
                icono: 'assets/svg/fingerprint.svg',
                onTap: () {
                  controlador.currentPage = 0;
                },
                seleccionado: controlador.currentPage == 0,
              ),
              BotonNavigator(
                icono: 'assets/svg/isologotipo.svg',
                onTap: () {
                  controlador.currentPage = 1;
                },
                seleccionado: controlador.currentPage == 1,
              ),
              BotonNavigator(
                icono: 'assets/svg/bell.svg',
                onTap: () {
                  controlador.currentPage = 2;
                },
                seleccionado: controlador.currentPage == 2,
              ),
            ],
          );
        }));
  }
}
