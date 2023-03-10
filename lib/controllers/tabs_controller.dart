import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabsController extends GetxController {
  final RxInt _currentPage = 0.obs;
  final RxBool _widgetLista = false.obs;
  final RxString _textoBusqueda = ''.obs;
  PageController _pageController = PageController(initialPage: 0);
  int get currentPage => _currentPage.value;
  bool get estadoWidget => _widgetLista.value;

  set textoBusqueda(String value) {
    _textoBusqueda.value = value;
    update();
  }

  String get textoBusqueda => _textoBusqueda.value;

  set currentPage(int value) {
    _currentPage.value = value;
    _pageController.animateToPage(value,
        duration: const Duration(milliseconds: 200),
        curve: Curves.fastOutSlowIn);
    update();
  }

  set estadoWidget(bool value) {
    _widgetLista.value = value;
    update();
  }

  set setInitialPage(int value) {
    _pageController = PageController(initialPage: value);
  }

  set setInitialCurrentPage(int value) {
    _currentPage.value = value;
  }

  PageController get pageController => _pageController;
}
