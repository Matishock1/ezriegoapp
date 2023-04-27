import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TabReportesScreen extends StatelessWidget {
  const TabReportesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FondoPantalla(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: ListView(children: [
            CustomAppBar(),
            const Gap(30),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Reportes',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
            const Gap(19),
            Row(
              children: [
                Expanded(
                  child: Text('Revisa los informes generados ',
                      style: Theme.of(context).textTheme.titleSmall),
                ),
              ],
            ),
            const Gap(29),
            ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const ClampingScrollPhysics(),
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const TileSuelo(reporte: true);
                  },
                ),
              ],
            ),
          ])),
    );
  }
}
