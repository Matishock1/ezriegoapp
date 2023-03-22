import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class TabManguerasScreen extends StatelessWidget {
  TabManguerasScreen({super.key});
  RxBool xdd = true.obs;

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
              Material(
                child: InkWell(
                  child: Ink(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: ColorSettings.sombraTab2,
                            offset: Offset(0, 3),
                            spreadRadius: 1,
                            blurRadius: 19)
                      ],
                    ),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      tileColor: ColorSettings.blanco,
                      minVerticalPadding: 10,
                      dense: true,
                      visualDensity: const VisualDensity(vertical: 2),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      leading: AspectRatio(
                        aspectRatio: 1,
                        child: SvgPicture.asset('assets/svg/mangueras.svg'),
                      ),
                      title: Text(
                        'Llave 1',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      subtitle: Text(
                        'Hace 5 min',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      trailing: Obx(
                        () => Switch(
                          activeColor: ColorSettings.primario,
                          onChanged: (value) {
                            xdd.value = !xdd.value;
                          },
                          value: xdd.value,
                        ),
                      ),
                      onTap: () {
                        xdd.value = !xdd.value;
                      },
                    ),
                  ),
                ),
              ),
            ])),
      ),
    );
  }
}
