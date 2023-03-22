import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EstadoSueloScreen extends StatelessWidget {
  EstadoSueloScreen({super.key});
  static const String ruta = '/estado_suelo';
  RxBool xdd = true.obs;

  @override
  Widget build(BuildContext context) {
    return FondoPantalla(
      child: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(children: [
              const CustomAppBar(),
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
              Material(
                child: InkWell(
                  child: Ink(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: ColorSettings.sombraTab2,
                            offset: Offset(0, 3),
                            spreadRadius: 1,
                            blurRadius: 19)
                      ],
                    ),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      tileColor: ColorSettings.blanco,
                      minVerticalPadding: 10,
                      dense: true,
                      visualDensity: const VisualDensity(vertical: 2),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      leading: AspectRatio(
                        aspectRatio: 1,
                        child: SvgPicture.asset(
                          'assets/svg/suelo.svg',
                        ),
                      ),
                      title: Text(
                        'Sector 1',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      subtitle: Text(
                        '20% Humedad 15° C.',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      trailing: Obx(
                        () => Switch(
                          activeColor: ColorSettings.primario,
                          onChanged: (value) {
                            xdd.value = !xdd.value;
                          },
                          value: xdd.value,
                        ),
                      ),
                      onTap: () {
                        xdd.value = !xdd.value;
                      },
                    ),
                  ),
                ),
              ),
            ])),
      ),
    );
  }
}
