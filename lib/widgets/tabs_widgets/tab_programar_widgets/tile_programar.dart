import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TileProgramar extends StatelessWidget {
  const TileProgramar({super.key});

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
                leading: SvgPicture.asset(
                  'assets/svg/file_report.svg',
                ),
                title: Text(
                  'Reporte Sector',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.nunito().fontFamily),
                ),
                subtitle: Row(
                  children: [
                    Expanded(
                        child: Text(
                      '12-02-2023',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 14),
                    ))
                  ],
                ),
                onTap: () {},
              ),
            ),
          ),
        ),
        const Gap(15)
      ],
    );
  }
}
