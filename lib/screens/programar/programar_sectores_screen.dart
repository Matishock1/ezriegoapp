import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/models/suelo.dart';
import 'package:ezriegoapp/widgets/programar/boton_programar_horas_widget.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/controllers.dart';

class ProgramarSectoresScreen extends StatelessWidget {
  const ProgramarSectoresScreen({super.key});
  static String ruta = '/programar_sectores';

  @override
  Widget build(BuildContext context) {
    final SuelosController controller = Get.find<SuelosController>();

    return FondoPantalla(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: LayoutBuilder(builder: (context, constraints) {
          List<Widget> hijos = [
            CustomAppBar(),
            const Gap(30),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Sectores',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
            const Gap(19),
            SectorInfo(
              suelo: controller.listaSuelos[0],
            ),
            const Gap(10),
            const Divider(
              // thickness: 1,
              color: ColorSettings.textoHuella,
              endIndent: 10,
              indent: 10,
              height: 10,
            ),
            const Gap(15),
            GetBuilder<SuelosController>(builder: (controller) {
              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 4,
                          child: BotonProgramarHoras(
                            texto: '8 hrs',
                            isActive: controller.botonSeleccionado == 0,
                            funcion: () {
                              controller.botonSeleccionado = 0;
                            },
                          )),
                      const Gap(10),
                      Expanded(
                          flex: 4,
                          child: BotonProgramarHoras(
                            texto: '12 hrs',
                            isActive: controller.botonSeleccionado == 1,
                            funcion: () {
                              controller.botonSeleccionado = 1;
                            },
                          )),
                      const Gap(10),
                      Expanded(
                          flex: 4,
                          child: BotonProgramarHoras(
                            texto: '16 hrs',
                            isActive: controller.botonSeleccionado == 2,
                            funcion: () {
                              controller.botonSeleccionado = 2;
                            },
                          )),
                    ],
                  ),
                  const Gap(15),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        '  Avanzado',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 18, height: 1.363),
                      )),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Switch(
                              activeColor: ColorSettings.primario,
                              onChanged: (value) {
                                controller.avanzado = !controller.avanzado;
                              },
                              value: controller.avanzado),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        '  Duración',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 18, height: 1.363),
                      )),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Switch(
                              activeColor: ColorSettings.primario,
                              onChanged: (value) {
                                controller.duracion = !controller.duracion;
                              },
                              value: controller.duracion),
                        ),
                      )
                    ],
                  ),
                ],
              );
            }),
            constraints.maxHeight <= 450
                ? const BotonVerdeAbajo()
                : const Expanded(
                    child: BotonVerdeAbajo(),
                  )
          ];
          return constraints.maxHeight <= 450
              ? ListView(
                  children: hijos,
                )
              : Column(children: hijos);
        }),
      ),
    );
  }
}

class BotonVerdeAbajo extends StatelessWidget {
  const BotonVerdeAbajo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorSettings.primario,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.symmetric(vertical: 17),
                  ),
                  child: const Text('Programar'),
                ),
              ),
            ],
          )),
    );
  }
}

class SectorInfo extends StatelessWidget {
  const SectorInfo({super.key, required this.suelo});

  final Suelo suelo;

  @override
  Widget build(BuildContext context) {
    return Material(
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
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          tileColor: ColorSettings.blanco,
          minVerticalPadding: 10,
          dense: true,
          visualDensity: const VisualDensity(vertical: 2),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          title: Text(
            suelo.nombre,
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontWeight: FontWeight.w500,
                fontFamily: GoogleFonts.nunito().fontFamily),
          ),
          subtitle: Row(
            children: [
              Expanded(
                  flex: 5,
                  child: RichText(
                    text: TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 14),
                        children: [
                          WidgetSpan(
                              child:
                                  SvgPicture.asset('assets/svg/droplet.svg')),
                          TextSpan(text: '${suelo.humedad}% Humedad'),
                        ]),
                  )),
              Expanded(
                  flex: 5,
                  child: RichText(
                    text: TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 14),
                        children: [
                          WidgetSpan(
                              child: SvgPicture.asset(
                                  'assets/svg/thermometer_half.svg')),
                          TextSpan(text: '${suelo.temperatura}°C.'),
                        ]),
                  ))
            ],
          ),
          onTap: () {
            // Get.toNamed(DetalleReporteScreen.ruta);
          },
        ),
      ),
    ));
  }
}
