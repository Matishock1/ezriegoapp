import 'package:ezriegoapp/constants/colores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginTextInput extends StatelessWidget {
  LoginTextInput(
      {super.key,
      required this.controllerEmail,
      required this.hint,
      required this.icono,
      this.isPssword});

  final TextEditingController controllerEmail;
  final String hint;
  final String icono;
  final bool? isPssword;
  final RxBool showPassword = true.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextFormField(
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.bodyLarge,
        textAlignVertical: TextAlignVertical.center,
        obscureText: isPssword != null && isPssword == true
            ? showPassword.value
            : false.obs.value,
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
            suffixIcon: isPssword != null && isPssword == true
                ? IconButton(
                    focusColor: ColorSettings.icons,
                    color: ColorSettings.icons,
                    onPressed: () {
                      showPassword.value = !showPassword.value;
                    },
                    icon: Icon(showPassword.value
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined),
                  )
                : const SizedBox(),
            isCollapsed: true),
        controller: controllerEmail,
      ),
    );
  }
}
