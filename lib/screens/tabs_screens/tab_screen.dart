import 'dart:io';

import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/screens/screens.dart';
import 'package:ezriegoapp/screens/tabs_screens/tab_reportes_screen.dart';
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
          TabHomecreen(),
          TabManguerasScreen(),
          Scaffold(
            body: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blue,
            ),
          ),
          const TabReportesScreen()
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
        height: Platform.isAndroid ? 85 : 85 + 15,
        decoration: const BoxDecoration(
          color: ColorSettings.blanco,
          boxShadow: [
            BoxShadow(
                color: ColorSettings.sombraTab,
                offset: Offset(0, -6),
                spreadRadius: -3,
                blurRadius: 10)
          ],
        ),
        child: GetBuilder<TabsController>(builder: (controlador) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BotonNavigator(
                icono: 'assets/svg/house.svg',
                onTap: () {
                  controlador.currentPage = 0;
                },
                seleccionado: controlador.currentPage == 0,
              ),
              BotonNavigator(
                icono: 'assets/svg/droplet.svg',
                onTap: () {
                  controlador.currentPage = 1;
                },
                seleccionado: controlador.currentPage == 1,
              ),
              BotonNavigator(
                icono: 'assets/svg/clock.svg',
                onTap: () {
                  controlador.currentPage = 2;
                },
                seleccionado: controlador.currentPage == 2,
              ),
              BotonNavigator(
                icono: 'assets/svg/graph_down.svg',
                onTap: () {
                  controlador.currentPage = 3;
                },
                seleccionado: controlador.currentPage == 3,
              ),
              BotonNavigator(
                icono: 'assets/svg/person.svg',
                onTap: () {
                  controlador.currentPage = 4;
                },
                seleccionado: controlador.currentPage == 4,
              ),
            ],
          );
        }));
  }
}
