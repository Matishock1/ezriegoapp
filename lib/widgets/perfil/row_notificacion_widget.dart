import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/models/notificaciones.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RowNotificacion extends StatelessWidget {
  const RowNotificacion({
    super.key,
    required this.notificacion,
  });

  final Notificaciones notificacion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: SvgPicture.asset(
                'assets/svg/circulo.svg',
                colorFilter: ColorFilter.mode(
                    notificacion.leido
                        ? ColorSettings.icons
                        : ColorSettings.primario,
                    BlendMode.srcIn),
              ),
            ),
            const Gap(5),
            Expanded(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notificacion.titulo,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontFamily: GoogleFonts.nunito().fontFamily),
                    ),
                    notificacion.subtitulo != ''
                        ? Text('Programó un riego para Sector 1',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontSize: 18))
                        : Container(),
                    const Gap(5),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(notificacion.fecha,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontSize: 14, height: 1.364)),
                    )
                  ],
                )),
          ],
        ),
        const Gap(5),
        const Divider(
          color: ColorSettings.textoHuella,
          height: 10,
        ),
      ],
    );
  }
}
