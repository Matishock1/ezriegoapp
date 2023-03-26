import 'package:ezriegoapp/controllers/controllers.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/models.dart';

// ignore: must_be_immutable
class TabManguerasScreen extends StatelessWidget {
  TabManguerasScreen({super.key});
  final ManguerasController _controller = Get.find<ManguerasController>();
  @override
  Widget build(BuildContext context) {
    return FondoPantalla(
      child: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(children: [
              const CustomAppBar(),
              const Gap(30),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Mangueras',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
              const Gap(19),
              Row(
                children: [
                  Expanded(
                    child: Text('Controla el estado de tus llaves ',
                        style: Theme.of(context).textTheme.titleSmall),
                  ),
                ],
              ),
              const Gap(29),
              Expanded(
                child: GetBuilder<ManguerasController>(builder: (controller) {
                  return ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.listaMangueras.length,
                        itemBuilder: (context, index) {
                          Manguera manguera = controller.listaMangueras[index];

                          return SwitchMangueras(manguera: manguera);
                        },
                      ),
                    ],
                  );
                }),
              ),
            ])),
      ),
    );
  }
}
