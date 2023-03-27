import 'package:ezriegoapp/constants/colores.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetalleReporteScreen extends StatefulWidget {
  const DetalleReporteScreen({super.key});

  final gridColor = ColorSettings.terciario;
  final titleColor = ColorSettings.textButton;
  final fashionColor = Colors.red;
  final artColor = Colors.cyan;
  final boxingColor = Colors.green;
  final entertainmentColor = Colors.black;
  final offRoadColor = Colors.accents;
  static const String ruta = '/detalle_reporte';

  @override
  State<DetalleReporteScreen> createState() => _DetalleReporteScreenState();
}

class _DetalleReporteScreenState extends State<DetalleReporteScreen> {
  int selectedDataSetIndex = -1;
  double angleValue = 0;
  bool relativeAngleMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Title configuration',
                style: TextStyle(
                  color: ColorSettings.smallText,
                ),
              ),
              Row(
                children: [
                  const Text(
                    'Angle',
                    style: TextStyle(
                      color: ColorSettings.icons,
                    ),
                  ),
                  Slider(
                    value: angleValue,
                    max: 360,
                    onChanged: (double value) =>
                        setState(() => angleValue = value),
                  ),
                  Checkbox(
                    value: relativeAngleMode,
                    onChanged: (v) => setState(() => relativeAngleMode = v!),
                  ),
                  const Text('Relative'),
                ],
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedDataSetIndex = -1;
                  });
                },
                child: Text(
                  'Categories'.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w300,
                    color: ColorSettings.secundario,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: rawDataSets()
                    .asMap()
                    .map((index, value) {
                      final isSelected = index == selectedDataSetIndex;
                      return MapEntry(
                        index,
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedDataSetIndex = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.symmetric(vertical: 2),
                            height: 26,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? ColorSettings.primario
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(46),
                            ),
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 6,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeInToLinear,
                                  padding: EdgeInsets.all(isSelected ? 8 : 6),
                                  decoration: BoxDecoration(
                                    color: value.color,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                AnimatedDefaultTextStyle(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInToLinear,
                                  style: TextStyle(
                                    color: isSelected
                                        ? value.color
                                        : widget.gridColor,
                                  ),
                                  child: Text(value.title),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    })
                    .values
                    .toList(),
              ),
              AspectRatio(
                aspectRatio: 1.3,
                child: RadarChart(
                  RadarChartData(
                    radarTouchData: RadarTouchData(
                      touchCallback: (FlTouchEvent event, response) {
                        if (!event.isInterestedForInteractions) {
                          setState(() {
                            selectedDataSetIndex = -1;
                          });
                          return;
                        }
                        setState(() {
                          selectedDataSetIndex =
                              response?.touchedSpot?.touchedDataSetIndex ?? -1;
                        });
                      },
                    ),
                    dataSets: showingDataSets(),
                    radarBackgroundColor: Colors.transparent,
                    borderData: FlBorderData(show: false),
                    radarBorderData: const BorderSide(color: Colors.black),
                    titlePositionPercentageOffset: 0.2,
                    titleTextStyle:
                        TextStyle(color: widget.titleColor, fontSize: 14),
                    getTitle: (index, angle) {
                      final usedAngle =
                          relativeAngleMode ? angle + angleValue : angleValue;
                      switch (index) {
                        case 0:
                          return RadarChartTitle(
                            text: 'Mobile or Tablet',
                            angle: usedAngle,
                          );
                        case 1:
                          return RadarChartTitle(text: 'TV', angle: usedAngle);
                        case 2:
                          return RadarChartTitle(
                            text: 'Desktop',
                            angle: usedAngle,
                          );
                        case 3:
                          return RadarChartTitle(
                            text: 'asd',
                            angle: usedAngle,
                          );

                        default:
                          return const RadarChartTitle(text: '');
                      }
                    },
                    tickCount: 1,
                    ticksTextStyle:
                        const TextStyle(color: Colors.black, fontSize: 10),
                    tickBorderData: const BorderSide(color: Colors.black),
                    gridBorderData:
                        BorderSide(color: widget.gridColor, width: 2),
                  ),
                  swapAnimationDuration: const Duration(milliseconds: 400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<RadarDataSet> showingDataSets() {
    return rawDataSets().asMap().entries.map((entry) {
      final index = entry.key;
      final rawDataSet = entry.value;

      final isSelected = index == selectedDataSetIndex
          ? true
          : selectedDataSetIndex == -1
              ? true
              : false;

      return RadarDataSet(
        fillColor: isSelected
            ? rawDataSet.color.withOpacity(0.2)
            : rawDataSet.color.withOpacity(0.05),
        borderColor:
            isSelected ? rawDataSet.color : rawDataSet.color.withOpacity(0.25),
        entryRadius: isSelected ? 3 : 2,
        dataEntries:
            rawDataSet.values.map((e) => RadarEntry(value: e)).toList(),
        borderWidth: isSelected ? 2.3 : 2,
      );
    }).toList();
  }

  List<RawDataSet> rawDataSets() {
    return [
      RawDataSet(
        title: 'Product 1',
        color: widget.fashionColor,
        values: [
          300,
          50,
          250,
        ],
      ),
      RawDataSet(
        title: 'Product 2',
        color: widget.artColor,
        values: [
          250,
          100,
          200,
        ],
      ),
      RawDataSet(
        title: 'Product 3',
        color: widget.entertainmentColor,
        values: [
          200,
          150,
          50,
        ],
      ),
      RawDataSet(
        title: 'Product 4',
        color: Colors.amber.shade400,
        values: [
          150,
          200,
          150,
        ],
      ),
    ];
  }
}

class RawDataSet {
  RawDataSet({
    required this.title,
    required this.color,
    required this.values,
  });

  final String title;
  final Color color;
  final List<double> values;
}
