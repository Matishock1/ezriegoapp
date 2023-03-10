import 'package:ezriegoapp/constants/colores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BotonNavigator extends StatelessWidget {
  final String icono;
  final Function() onTap;
  final bool seleccionado;
  const BotonNavigator(
      {Key? key,
      required this.icono,
      required this.onTap,
      required this.seleccionado})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Transform.translate(
          offset:
              seleccionado ? const Offset(0.0, -30) : const Offset(0.0, 0.0),
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: ColorSettings.secundario),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: seleccionado
                  ? ColorSettings.blanco
                  : ColorSettings.secundario,
              child: SvgPicture.asset(
                icono,
                // height: 26,
                colorFilter: ColorFilter.mode(
                    seleccionado ? ColorSettings.blanco : ColorSettings.negro2,
                    BlendMode.srcIn),
              ),
            ),
          )),
    );
  }
}
