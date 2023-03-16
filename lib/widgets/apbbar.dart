import 'package:ezriegoapp/constants/colores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  final bool? home;
  const CustomAppBar({super.key, this.home});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 3,
            child: SvgPicture.asset(
              home != null && home == true
                  ? 'assets/svg/isologo_pequeno.svg'
                  : 'assets/svg/chevron.svg',
              alignment: Alignment.centerLeft,
            ),
          ),
          Expanded(
              flex: 8,
              child: Container(
                width: 0,
              )),
          Expanded(
              flex: 2,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.10,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/bell.svg',
                        colorFilter: ColorFilter.mode(
                            home != null && home == true
                                ? ColorSettings.blanco
                                : ColorSettings.negro2,
                            BlendMode.srcIn),
                      ),
                      Positioned(
                          left: 18,
                          child: CircleAvatar(
                            backgroundColor: ColorSettings.terciario,
                            radius: MediaQuery.of(context).size.height * 0.009,
                          ))
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
