import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BotonTabHome extends StatelessWidget {
  const BotonTabHome(
      {super.key,
      required this.icono,
      required this.tituloBoton,
      required this.large,
      this.titulo1,
      this.titulo2,
      this.cantidad1,
      this.cantidad2,
      this.descripcion,
      required this.funcion});
  final String icono;
  final String tituloBoton;
  final String? titulo1;
  final String? titulo2;
  final String? cantidad1;
  final String? cantidad2;
  final bool large;
  final String? descripcion;
  final Function()? funcion;
  final double x = 0.27;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * x,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * (x - 0.03),
            width: double.infinity,
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
                onTap: funcion,
                borderRadius: BorderRadius.circular(15),
                child: Ink(
                  child: Column(
                    children: [
                      const Gap(8),
                      SvgPicture.asset(icono,
                          height:
                              MediaQuery.of(context).size.height * (x - 0.18)),
                      const Gap(8),
                      Text(
                        tituloBoton,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const Gap(15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: !large
                            ? Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                          flex: 8,
                                          child: Text(
                                            titulo1!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall,
                                          )),
                                      Expanded(
                                          flex: 3,
                                          child: Text(
                                            cantidad1!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall,
                                            textAlign: TextAlign.end,
                                          ))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          flex: 8,
                                          child: Text(
                                            titulo2!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall,
                                          )),
                                      Expanded(
                                          flex: 3,
                                          child: Text(
                                            cantidad2!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall,
                                            textAlign: TextAlign.end,
                                          )),
                                    ],
                                  ),
                                ],
                              )
                            : Text(
                                descripcion!,
                                style: Theme.of(context).textTheme.labelSmall,
                                textAlign: TextAlign.center,
                              ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: funcion,
                  borderRadius: BorderRadius.circular(50),
                  child: Ink(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorSettings.secundario,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      height: MediaQuery.of(context).size.height * 0.06,
                      // decoration: const BoxDecoration(
                      //     shape: BoxShape.circle,
                      //     color: ColorSettings.secundario),
                      child: SvgPicture.asset(
                        'assets/svg/arrow_right.svg',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
