import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/controllers/controllers.dart';
import 'package:ezriegoapp/models/magueras.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SwitchMangueras extends StatelessWidget {
  const SwitchMangueras({
    super.key,
    required this.manguera,
  });

  final Manguera manguera;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                  manguera.nombre,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.nunito().fontFamily),
                ),
                subtitle: Obx(
                  () => Text(
                    manguera.activo,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: manguera.switchValue.value
                            ? ColorSettings.primario
                            : Theme.of(context).textTheme.bodyLarge!.color),
                  ),
                ),
                trailing: Obx(
                  () => Switch(
                    activeColor: ColorSettings.primario,
                    onChanged: (value) {
                      manguera.switchValue.value = !manguera.switchValue.value;
                    },
                    value: manguera.switchValue.value,
                  ),
                ),
                onTap: () {
                  manguera.switchValue.value = !manguera.switchValue.value;
                  ManguerasController controller =
                      Get.find<ManguerasController>();
                  controller.actualizaLista();
                },
              )),
        )),
        const Gap(15)
      ],
    );
  }
}
