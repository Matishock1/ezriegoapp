import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/controllers.dart';
import '../../models/models.dart';

class EstadoSueloScreen extends StatelessWidget {
  const EstadoSueloScreen({super.key});
  static const String ruta = '/estado_suelo';

  @override
  Widget build(BuildContext context) {
    return FondoPantalla(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: ListView(children: [
            CustomAppBar(),
            const Gap(30),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Estado de suelo',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
            const Gap(19),
            Row(
              children: [
                Expanded(
                  child: Text('Monitorea el estado del suelo de tus cultivos',
                      style: Theme.of(context).textTheme.titleSmall),
                ),
              ],
            ),
            const Gap(29),
            GetBuilder<SuelosController>(builder: (controller) {
              return ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const ClampingScrollPhysics(),
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.listaSuelos.length,
                    itemBuilder: (context, index) {
                      Suelo suelo = controller.listaSuelos[index];

                      return TileSuelo(suelo: suelo);
                    },
                  ),
                ],
              );
            }),
          ])),
    );
  }
}
