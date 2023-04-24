import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/controllers/controllers.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistorialScreen extends StatelessWidget {
  HistorialScreen({super.key});
  static String ruta = '/historial_scren';

  final TextEditingController controllerBuscar = TextEditingController();

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
                    'Historial',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
            const Gap(19),
            LoginTextInput(
                controllerEmail: controllerBuscar,
                hint: 'Buscar',
                icono: 'assets/svg/search.svg'),
            const Gap(12),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sáb. 27 feb.',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 14, height: 1.364),
                    ),
                    const Divider(
                      color: ColorSettings.textoHuella,
                      height: 10,
                    ),
                    const Gap(12),
                    GetBuilder<HistorialController>(builder: (controller) {
                      return ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const ClampingScrollPhysics(),
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return RegistroHistorial(
                                historial: controller.listaHistorial[index],
                              );
                            },
                          ),
                        ],
                      );
                    }),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vie. 25 feb.',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 14, height: 1.364),
                    ),
                    const Divider(
                      color: ColorSettings.textoHuella,
                      height: 10,
                    ),
                    const Gap(12),
                    GetBuilder<HistorialController>(builder: (controller) {
                      return ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const ClampingScrollPhysics(),
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return RegistroHistorial(
                                historial: controller.listaHistorial[index + 2],
                              );
                            },
                          ),
                        ],
                      );
                    }),
                  ],
                )),
          ],
        ),
      ),
    ));
  }
}
