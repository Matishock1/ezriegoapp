import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BotonTabHome extends StatelessWidget {
  const BotonTabHome({
    super.key,
  });

  final double x = 0.26;

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
            child: Column(
              children: [
                const Gap(22),
                SvgPicture.asset('assets/svg/mangueras.svg',
                    height: MediaQuery.of(context).size.height * (x - 0.17)),
                const Text('hello world'),
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(12),
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: ColorSettings.secundario),
                child: SvgPicture.asset(
                  'assets/svg/arrow_right.svg',
                  fit: BoxFit.scaleDown,
                ),
              )),
        ],
      ),
    );
  }
}
