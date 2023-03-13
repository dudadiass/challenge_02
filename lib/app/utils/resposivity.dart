import 'package:flutter/cupertino.dart';

class Resposivity {
  static const double widthMock = 375;
  static const double heightMock = 667;
  static double _calcWidth(double tamanho, MediaQueryData data) {
    var coeficiente = tamanho / widthMock;

    return data.size.width * coeficiente;
  }

  static double _calcHeight(double tamanho, MediaQueryData data) {
    var coeficiente = tamanho / heightMock;

    return data.size.height * coeficiente;
  }

  static double automatic(double tamanho, MediaQueryData data) {
    final width = data.size.width;
    final height = data.size.height;

    return width > height
        ? _calcHeight(tamanho, data)
        : _calcWidth(tamanho, data);
  }
}
