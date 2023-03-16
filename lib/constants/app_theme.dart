import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colores.dart';

class AppTheme {
  static final ThemeData temaLight = ThemeData.light().copyWith(
      primaryColor: ColorSettings.secundario,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.nunito(
          fontSize: 95,
          fontWeight: FontWeight.w300,
          letterSpacing: -1.5,
          color: const Color(0xFF3A5C97),
        ),
        displayMedium: GoogleFonts.nunito(
            fontSize: 18,
            letterSpacing: 0,
            color: ColorSettings.negro,
            fontWeight: FontWeight.bold),
        displaySmall: GoogleFonts.nunito(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: ColorSettings.negro,
            letterSpacing: 0),
        headlineMedium: GoogleFonts.nunito(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: ColorSettings.textButton),
        headlineSmall: GoogleFonts.nunito(
          fontSize: 28,
          letterSpacing: 0.15,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: GoogleFonts.nunito(
            fontSize: 36,
            fontWeight: FontWeight.w800,
            height: 1.16,
            color: ColorSettings.blanco),
        titleMedium: GoogleFonts.nunito(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            letterSpacing: 0,
            color: ColorSettings.negro),
        // titleSmall: GoogleFonts.nunito(
        //     fontSize: 9,
        //     fontWeight: FontWeight.w500,
        //     letterSpacing: 0.3,
        //     color: ColorSettings.textoSubtitulo),
        bodyLarge: GoogleFonts.nunito(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
          color: ColorSettings.textHint,
        ),
        bodyMedium: GoogleFonts.nunito(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.47,
            color: ColorSettings.secundario),
        labelLarge: GoogleFonts.nunito(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.47,
            color: ColorSettings.blanco),
        bodySmall: GoogleFonts.nunito(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.0,
            color: Colors.black),
        labelSmall: GoogleFonts.nunito(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            letterSpacing: 0,
            color: ColorSettings.negro),
        // bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //     backgroundColor: ColoresPediatria.botoonNavigator),
        // colorScheme: ThemeData.light().colorScheme.copyWith(
        //       primary: ColoresPediatria.iconos,
        //       primaryContainer: ColoresPediatria.containerBackground,
        //       secondaryContainer: ColoresPediatria.backgroundAndbottonBar,
        //       onBackground: ColoresPediatria.toggleButton,
        //       outline: ColoresPediatria.borderInput,
        //     ),
        // inputDecorationTheme: InputDecorationTheme(
        //     focusedBorder: OutlineInputBorder(
        //         borderSide: BorderSide(
        //             width: 2.0,
        //             style: BorderStyle.solid,
        //             color: ColoresPediatria.borderInput),
        //         borderRadius: BorderRadius.circular(18.0)),
        //     border: OutlineInputBorder(
        //         borderSide: BorderSide(
        //             width: 1.0,
        //             style: BorderStyle.solid,
        //             color: ColoresPediatria.borderInput),
        //         borderRadius: BorderRadius.circular(18.0)),
        //     enabledBorder: OutlineInputBorder(
        //         borderSide: BorderSide(
        //             width: 2.0,
        //             style: BorderStyle.solid,
        //             color: ColoresPediatria.borderInput),
        //         borderRadius: BorderRadius.circular(18.0)),
        //     suffixStyle: TextStyle(color: Colors.black)),
        // checkboxTheme: CheckboxThemeData(
        //   fillColor: MaterialStateProperty.all(ColoresPediatria.iconos),
        //   checkColor: MaterialStateProperty.all(Colors.white),
        // ),
      ),
      iconTheme: const IconThemeData(color: ColorSettings.icons));

  //Tema para medicina
}
