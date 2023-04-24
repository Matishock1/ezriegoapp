import 'package:ezriegoapp/controllers/notificaciones_controller.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificacionesScreen extends StatelessWidget {
  const NotificacionesScreen({super.key});
  static String ruta = '/notificaciones_screen';

  @override
  Widget build(BuildContext context) {
    return FondoPantalla(
        child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            CustomAppBar(),
            const Gap(30),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Notificaciones',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
            const Gap(25),
            GetBuilder<NotificacionesController>(builder: (controller) {
              return ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const ClampingScrollPhysics(),
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.listaNotificaciones.length,
                    itemBuilder: (context, index) {
                      return RowNotificacion(
                        notificacion: controller.listaNotificaciones[index],
                      );
                    },
                  )
                ],
              );
            }),
          ],
        ),
      ),
    ));
  }
}
