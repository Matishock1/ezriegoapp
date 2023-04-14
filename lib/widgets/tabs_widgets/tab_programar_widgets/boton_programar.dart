import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BotonProgramar extends StatelessWidget {
  final String icono;
  final String texto;
  const BotonProgramar({
    super.key,
    required this.icono,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.12,
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
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(15),
            child: Ink(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    icono,
                    fit: BoxFit.fitHeight,
                  ),
                  const Gap(12),
                  Text(
                    texto,
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
