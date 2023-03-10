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
              child: Column(
            children: [
              const CustomAppBar(
                home: true,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: const [],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
