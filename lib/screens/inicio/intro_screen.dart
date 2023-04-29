import 'package:ezriegoapp/constants/colores.dart';
import 'package:ezriegoapp/screens/screens.dart';
import 'package:ezriegoapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});
  static const String ruta = '/intro_screen';
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              tileMode: TileMode.mirror,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            ColorSettings.backgroundIntroTop,
            ColorSettings.backgroundIntroBot
          ],
              stops: [
            0.9,
            1
          ])),
      child: SafeArea(
          child: Stack(
        children: [
          Positioned(
            top: 5,
            right: -300,
            child: SvgPicture.asset(
              'assets/svg/leaf.svg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.98,
            ),
          ),
          LayoutBuilder(
            builder: (BuildContext buildContext, BoxConstraints constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: constraints.copyWith(
                    minHeight: constraints.maxHeight,
                    maxHeight: double.infinity,
                  ),
                  child: IntrinsicHeight(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 49),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 205.0),
                              child: SizedBox(
                                // height:
                                //     MediaQuery.of(context).size.height * 0.2,
                                // width:
                                //     MediaQuery.of(context).size.width * 0.6,
                                child: SvgPicture.asset(
                                  'assets/svg/isologotipo.svg',
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 55,
                            ),
                            LoginTextInput(
                                controllerEmail: controllerEmail,
                                icono: 'assets/svg/mail.svg',
                                hint: 'Correo electrónico'),
                            const SizedBox(
                              height: 15,
                            ),
                            LoginTextInput(
                              controllerEmail: controllerPassword,
                              icono: 'assets/svg/lock.svg',
                              hint: 'Contraseña',
                              isPssword: true,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    '¿Olvidaste tu contraseña?',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  )),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Get.offNamed(TabScreen.ruta);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: ColorSettings.primario,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 17),
                                    ),
                                    child: const Text('Iniciar sesión'),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            RichText(
                                text: TextSpan(
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                            color: const Color(0xff666666)),
                                    children: [
                                  const TextSpan(text: '¿No tienes cuenta? '),
                                  WidgetSpan(
                                      alignment: PlaceholderAlignment.middle,
                                      child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Regístrate aquí',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium,
                                          ))),
                                ])),
                            const SizedBox(
                              height: 70,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                      'assets/svg/fingerprint.svg'),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Text('Usar biometría ',
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: Text('2023 EZriego',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                            color: ColorSettings.textoFooter,
                                          )),
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              );
            },
          )
        ],
      )),
    ));
  }
}
