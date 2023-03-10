
import 'package:ezriegoapp/constants/colores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashAnimation extends StatefulWidget {
  const SplashAnimation({super.key});

  @override
  State<SplashAnimation> createState() => _SplashAnimationState();
}

class _SplashAnimationState extends State<SplashAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> translationAnimation;
  late Animation<double> opacityAnimation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: ColorSettings.durationAnimation),
    );
    // translationAnimation =
    //     Tween(begin: -1.0, end: 0.0).animate(animationController);
    translationAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(
            parent: animationController, curve: Curves.easeInOutSine));
    opacityAnimation = Tween(begin: 0.5, end: 1.0).animate(animationController);
    scaleAnimation = Tween(begin: 0.5, end: 1.0).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0,
              translationAnimation.value * MediaQuery.of(context).size.height),
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, translationAnimation.value)
              ..scale(scaleAnimation.value),
            alignment: Alignment.center,
            child: AnimatedOpacity(
              opacity: opacityAnimation.value,
              duration: const Duration(milliseconds: 800),
              child: child,
            ),
          ),
        );
      },
      child: Center(child: SvgPicture.asset('assets/svg/logo.svg')),
    );
  }
}
