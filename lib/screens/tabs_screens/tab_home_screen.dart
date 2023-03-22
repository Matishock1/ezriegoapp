import 'package:ezriegoapp/screens/estado_suelo_screen.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TabHomecreen extends StatelessWidget {
  const TabHomecreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FondoPantalla(
      child: Stack(
        children: [
          Positioned(
              top: -1,
              child: SvgPicture.asset(
                'assets/svg/wave.svg',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.contain,
              )),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                const CustomAppBar(
                  home: true,
                ),
                const Gap(18),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Bienvenido',
                      style: Theme.of(context).textTheme.titleLarge,
                    ))
                  ],
                ),
                const Gap(25),
                Row(
                  children: [
                    Expanded(
                      child: BotonTabHome(
                        icono: 'assets/svg/mangueras.svg',
                        tituloBoton: 'Mangueras',
                        large: false,
                        titulo1: 'Tus llaves',
                        cantidad1: '4',
                        titulo2: 'Activas',
                        cantidad2: '1',
                        funcion: () {},
                      ),
                    ),
                    const Gap(15),
                    Expanded(
                      child: BotonTabHome(
                        icono: 'assets/svg/suelo.svg',
                        tituloBoton: 'Suelo',
                        large: false,
                        titulo1: 'Sectores',
                        cantidad1: '3',
                        titulo2: 'T° Promedio',
                        cantidad2: '20°C',
                        funcion: () {
                          Get.toNamed(EstadoSueloScreen.ruta);
                        },
                      ),
                    )
                  ],
                ),
                const Gap(22),
                Row(
                  children: [
                    Expanded(
                        child: BotonTabHome(
                      icono: 'assets/svg/programar.svg',
                      tituloBoton: 'Programar',
                      large: true,
                      descripcion: 'Programa el cuidado de tus cultivos',
                      funcion: () {},
                    )),
                    const Gap(15),
                    Expanded(
                        child: BotonTabHome(
                      icono: 'assets/svg/reportes.svg',
                      tituloBoton: 'Reportes',
                      large: true,
                      descripcion: 'Revisa los reportes de tus cultivos',
                      funcion: () {},
                    ))
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
