import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/screens/detalle_reporte_screen.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/models.dart';

class TileSuelo extends StatelessWidget {
  const TileSuelo({super.key, this.suelo, this.reporte});

  final Suelo? suelo;
  final bool? reporte;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                leading: SvgPicture.asset(
                  reporte == null
                      ? 'assets/svg/suelo.svg'
                      : 'assets/svg/file_report.svg',
                ),
                title: Text(
                  reporte == null ? suelo!.nombre : 'Reporte Sector',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.nunito().fontFamily),
                ),
                subtitle: reporte != null
                    ? Row(
                        children: [
                          Expanded(
                              child: Text(
                            '12-02-2023',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontSize: 14),
                          ))
                        ],
                      )
                    : Row(
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
                                          child: SvgPicture.asset(
                                              'assets/svg/droplet.svg')),
                                      TextSpan(
                                          text: '${suelo!.humedad}% Humedad'),
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
                                      TextSpan(
                                          text: '${suelo!.temperatura}°C.'),
                                    ]),
                              ))
                        ],
                      ),
                onTap: () {
                  Get.toNamed(DetalleReporteScreen.ruta);
                },
              ),
            ),
          ),
        ),
        const Gap(15)
      ],
    );
  }
}
