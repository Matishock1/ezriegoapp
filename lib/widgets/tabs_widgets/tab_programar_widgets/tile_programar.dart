import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TileProgramar extends StatelessWidget {
  const TileProgramar(
      {super.key,
      required this.titulo,
      required this.subtitulo,
      required this.icono,
      required this.descripcion,
      required this.activo,
      this.fecha});
  final String titulo;
  final String subtitulo;
  final String icono;
  final String descripcion;
  final bool activo;
  final String? fecha;

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
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                isThreeLine: true,
                leading: SvgPicture.asset(
                  icono,
                ),
                trailing: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: !activo
                        ? SvgPicture.asset(
                            'assets/svg/trash.svg',
                          )
                        : const SizedBox(
                            height: 0,
                          )),
                title: Text(
                  titulo,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.nunito().fontFamily),
                ),
                subtitle: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          subtitulo,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontSize: 14),
                        ))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: RichText(
                          text: TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(fontSize: 10),
                              children: [
                                WidgetSpan(
                                    child: SvgPicture.asset(
                                        'assets/svg/tiny_clock.svg',
                                        colorFilter: ColorFilter.mode(
                                            activo
                                                ? ColorSettings.primario
                                                : ColorSettings.textoProximos,
                                            BlendMode.srcIn))),
                                const WidgetSpan(child: Gap(10)),
                                TextSpan(
                                  text: descripcion,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          fontSize: 10,
                                          color: activo
                                              ? ColorSettings.primario
                                              : ColorSettings.textoProximos),
                                ),
                                const WidgetSpan(child: Gap(5)),
                                if (fecha.toString() != 'null')
                                  WidgetSpan(
                                      alignment: PlaceholderAlignment.middle,
                                      child: SvgPicture.asset(
                                        'assets/svg/point.svg',
                                      )),
                                const WidgetSpan(child: Gap(5)),
                                TextSpan(
                                  text: fecha,
                                ),
                              ]),
                        ))
                      ],
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ),
          ),
        ),
        const Gap(15)
      ],
    );
  }
}
