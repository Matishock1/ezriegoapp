import 'package:ezriegoapp/constants/colores.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/widgets.dart';

class TabProgramar extends StatelessWidget {
  TabProgramar({super.key});
  static String ruta = '/tab_programar';
  final RxList<bool> _selectScreen = RxList<bool>([true, false]);

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
              children: const [
                Expanded(
                    child: BotonProgramar(
                  texto: 'Mangueras',
                  icono: 'assets/svg/programar_manguera.svg',
                )),
                Gap(10),
                Expanded(
                    child: BotonProgramar(
                  texto: 'Sectores',
                  icono: 'assets/svg/programar_suelo.svg',
                )),
                Gap(10),
                Expanded(
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
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Obx(
                          () => ToggleButtons(
                            constraints: BoxConstraints.expand(
                                width: (constraints.maxWidth / 2) - 1.5),
                            isSelected: _selectScreen,
                            onPressed: (int index) {
                              for (int i = 0; i < _selectScreen.length; i++) {
                                _selectScreen[i] = i == index;
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
                            children: const <Widget>[
                              Text('Activos'),
                              Text('Próximos')
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            const Gap(20),
            Expanded(
                child: Column(
              children: const [
                TileProgramar(),
              ],
            ))
          ],
        ),
      ),
    ));
  }
}
