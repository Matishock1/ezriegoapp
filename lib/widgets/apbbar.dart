import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/controllers.dart';

class CustomAppBar extends StatelessWidget {
  final bool? home;

  CustomAppBar({super.key, this.home});
  final TabsController _tabsController = Get.find<TabsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
              flex: 3,
              child: IconButton(
                onPressed: () {
                  if (Get.currentRoute.contains('tab')) {
                    _tabsController.currentPage = 0;
                  } else {
                    Get.back();
                  }
                },
                icon: Align(
                  alignment: Alignment.centerLeft,
                  child: SvgPicture.asset(
                    home != null && home == true
                        ? 'assets/svg/isologo_pequeno.svg'
                        : 'assets/svg/chevron.svg',
                    alignment: Alignment.centerLeft,
                  ),
                ),
              )),
          Expanded(
              flex: 8,
              child: Container(
                width: 0,
              )),
          Expanded(
              flex: 2,
              child: !Get.currentRoute.contains('notificacion')
                  ? GestureDetector(
                      onTap: () {
                        Get.toNamed(NotificacionesScreen.ruta);
                      },
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
                                    radius: MediaQuery.of(context).size.height *
                                        0.009,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    )
                  : Container()),
          Get.currentRoute.contains('tab')
              ? Expanded(
                  flex: 2,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.10,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: IconButton(
                          icon: const Icon(Icons.menu_rounded),
                          iconSize: MediaQuery.of(context).size.width * 0.08,
                          color: home != null && home == true
                              ? ColorSettings.blanco
                              : ColorSettings.negro2,
                          onPressed: () {
                            final ScaffoldState scafold = Scaffold.of(context);
                            _tabsController.openDrawer(scafold);
                          },
                        )),
                  ))
              : Container(
                  height: 45,
                ),
        ],
      ),
    );
  }
}
