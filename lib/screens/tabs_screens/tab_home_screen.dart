import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                  children: const [
                    Expanded(
                      child: BotonTabHome(),
                    ),
                    Gap(15),
                    Expanded(child: BotonTabHome())
                  ],
                ),
                const Gap(22),
                Row(
                  children: const [
                    Expanded(
                      child: BotonTabHome(),
                    ),
                    Gap(15),
                    Expanded(child: BotonTabHome())
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
