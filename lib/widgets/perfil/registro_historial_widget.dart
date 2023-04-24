import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/models/models.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistroHistorial extends StatelessWidget {
  const RegistroHistorial({
    super.key,
    required this.historial,
  });

  final Historial historial;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 3,
                  child: Text(
                    historial.hora,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w500,
                          height: 1.363,
                          color: ColorSettings.textoHuella,
                        ),
                  )),
              Expanded(
                  flex: 13,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.094,
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
                        borderRadius: BorderRadius.circular(12)),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(12),
                        child: Ink(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                historial.titulo,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        height: 1.363,
                                        fontFamily:
                                            GoogleFonts.nunito().fontFamily),
                              ),
                              Text(
                                historial.estado,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily:
                                            GoogleFonts.nunito().fontFamily,
                                        color: historial.estado == 'Activada'
                                            ? ColorSettings.primario
                                            : Theme.of(context)
                                                .textTheme
                                                .bodyLarge!
                                                .color),
                              ),
                              Expanded(
                                  child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  historial.userLog,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: 14,
                                        height: 1.363,
                                      ),
                                ),
                              ))
                            ],
                          ),
                        )),
                      ),
                    ),
                  ))
            ],
          ),
          const Gap(10)
        ],
      ),
    );
  }
}
