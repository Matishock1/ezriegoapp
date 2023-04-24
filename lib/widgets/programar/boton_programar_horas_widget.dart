import 'package:ezriegoapp/constants/colores.dart';
import 'package:flutter/material.dart';

class BotonProgramarHoras extends StatelessWidget {
  const BotonProgramarHoras({
    super.key,
    required this.isActive,
    required this.texto,
    this.funcion,
  });

  final bool isActive;
  final String texto;
  final void Function()? funcion;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 40,
      height: MediaQuery.of(context).size.height * 0.045,

      width: double.infinity,
      decoration: BoxDecoration(
          color: isActive ? ColorSettings.secundario : ColorSettings.blanco,
          boxShadow: const [
            BoxShadow(
                color: ColorSettings.sombraTab2,
                offset: Offset(0, 3),
                spreadRadius: 1,
                blurRadius: 19)
          ],
          borderRadius: BorderRadius.circular(5)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: funcion,
          borderRadius: BorderRadius.circular(5),
          child: Ink(
            child: Center(
              child: Text(
                texto,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: isActive
                        ? ColorSettings.blanco
                        : const Color(0xff85909A)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
