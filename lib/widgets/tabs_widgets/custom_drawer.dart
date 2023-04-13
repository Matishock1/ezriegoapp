import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({
    super.key,
  });
  RxBool oscuro = false.obs;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: MediaQuery.of(context).size.width * 0.72,
        child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.11,
              left: 25,
              right: 25),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text('Menú',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: 18)),
                    ),
                    const Gap(15),
                    const OpcionDrawer(
                      texto: 'Mis Datos',
                      icono: 'person',
                    ),
                    const OpcionDrawer(
                      texto: 'Historial de actividad',
                      icono: 'clockHistory',
                    ),
                    const OpcionDrawer(
                        texto: 'Ayuda y soporte', icono: 'support'),
                    const OpcionDrawer(
                      texto: 'Cerrar sesión',
                      icono: 'logout',
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 40),
                child: Column(
                  children: [
                    const Divider(
                      // thickness: 1,
                      color: ColorSettings.textoHuella,
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: SvgPicture.asset('assets/svg/moon.svg')),
                        Expanded(
                          flex: 6,
                          child: Text(
                            'Modo oscuro',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontSize: 18),
                          ),
                        ),
                        Expanded(
                          child: Obx(
                            () => Switch(
                              activeColor: ColorSettings.primario,
                              onChanged: (value) {
                                oscuro.value = !oscuro.value;
                              },
                              value: oscuro.value,
                            ),
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      color: ColorSettings.textoHuella,
                      height: 10,
                    ),
                    const Gap(5),
                    Text('2023 EZriego',
                        style: Theme.of(context).textTheme.headlineSmall)
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class OpcionDrawer extends StatelessWidget {
  const OpcionDrawer({
    super.key,
    required this.texto,
    required this.icono,
  });
  final String texto;
  final String icono;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0.1,
      // dense: true,
      visualDensity: const VisualDensity(vertical: 0.1),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 1,
      ),
      title: Row(
        children: [
          Expanded(
              flex: 1,
              child: Align(
                  alignment: Alignment.centerRight,
                  child: SvgPicture.asset('assets/svg/$icono.svg'))),
          const Gap(8),
          Expanded(
              flex: 9,
              child: Text(
                texto,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 18),
              ))
        ],
      ),
      onTap: () {},
    );
  }
}
