import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/controllers/controllers.dart';
import 'package:ezriegoapp/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/widgets.dart';

class TabProgramar extends StatelessWidget {
  TabProgramar({super.key});
  static String ruta = '/tab_programar';
  final TabsController tabsController = Get.find<TabsController>();

  @override
  Widget build(BuildContext context) {
    return FondoPantalla(
        child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            CustomAppBar(),
            const Gap(30),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Programar',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
            const Gap(19),
            Row(
              children: [
                Expanded(
                    child: BotonProgramar(
                  texto: 'Mangueras',
                  icono: 'assets/svg/programar_manguera.svg',
                  funcion: () {
                    tabsController.currentPage = 1;
                  },
                )),
                const Gap(10),
                Expanded(
                    child: BotonProgramar(
                  texto: 'Sectores',
                  icono: 'assets/svg/programar_suelo.svg',
                  funcion: () {
                    Get.toNamed(ProgramarSectoresScreen.ruta);
                  },
                )),
                const Gap(10),
                const Expanded(
                    child: BotonProgramar(
                  texto: 'Plantillas',
                  icono: 'assets/svg/programar_carpeta.svg',
                )),
              ],
            ),
            const Gap(20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: ColorSettings.blanco,
                        boxShadow: const [
                          BoxShadow(
                              color: ColorSettings.sombraTab2,
                              offset: Offset(0, 3),
                              spreadRadius: 1,
                              blurRadius: 19)
                        ],
                        borderRadius: BorderRadius.circular(15)),
                    child: GetBuilder<TabsController>(builder: (controller) {
                      return LayoutBuilder(
                        builder: (context, constraints) {
                          return ToggleButtons(
                            constraints: BoxConstraints.expand(
                                width: (constraints.maxWidth / 2) - 1.5),
                            isSelected: controller.selectScreen,
                            onPressed: (int index) {
                              for (int i = 0;
                                  i < controller.selectScreen.length;
                                  i++) {
                                controller.selectScreen[i] = i == index;
                                controller.update();
                              }
                            },
                            renderBorder: false,
                            borderRadius: BorderRadius.circular(13),
                            selectedBorderColor: ColorSettings.terciario,
                            selectedColor: ColorSettings.titleMedium,
                            fillColor: ColorSettings.terciario,
                            disabledColor: ColorSettings.blanco,
                            textStyle: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontSize: 16),
                            children: const [Text('Activos'), Text('Próximos')],
                          );
                        },
                      );
                    }),
                  ),
                ),
              ],
            ),
            const Gap(20),
            Expanded(
                child: Obx(
              () => tabsController.selectScreen[0]
                  ? Column(
                      children: const [
                        TileProgramar(
                          titulo: 'Sector 1',
                          subtitulo: 'Plantilla: Nombre plantilla 1',
                          icono: 'assets/svg/suelo.svg',
                          descripcion: '1hr',
                          activo: true,
                        ),
                        TileProgramar(
                          titulo: 'Manguera 1',
                          subtitulo: 'Plantilla: Nombre plantilla 1',
                          icono: 'assets/svg/mangueras.svg',
                          descripcion: '1hr',
                          activo: true,
                        ),
                      ],
                    )
                  : Column(
                      children: const [
                        TileProgramar(
                          titulo: 'Sector 1',
                          subtitulo: 'Plantilla: Nombre plantilla 1',
                          icono: 'assets/svg/suelo.svg',
                          descripcion: '15:00 - 16:00 hrs',
                          activo: false,
                          fecha: '11 de abril, 2023',
                        ),
                        TileProgramar(
                          titulo: 'Manguera 1',
                          subtitulo: 'Plantilla: Nombre plantilla 1',
                          icono: 'assets/svg/mangueras.svg',
                          descripcion: '22:00 - 00:00 hrs',
                          activo: false,
                          fecha: '11 de abril, 2023',
                        ),
                      ],
                    ),
            ))
          ],
        ),
      ),
    ));
  }
}
