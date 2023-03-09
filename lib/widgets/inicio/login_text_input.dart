import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginTextInput extends StatelessWidget {
  const LoginTextInput(
      {super.key,
      required this.controllerEmail,
      required this.hint,
      required this.icono});

  final TextEditingController controllerEmail;
  final String hint;
  final String icono;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.left,
      style: Theme.of(context).textTheme.bodyLarge,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
          ),
          label: null,
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.bodyLarge,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 10),
            child: SvgPicture.asset(
              icono,
            ),
          ),
          isCollapsed: true),
      controller: controllerEmail,
    );
  }
}
