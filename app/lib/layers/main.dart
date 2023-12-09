import 'package:app/layers/core/inject/inject.dart';
import 'package:app/layers/presentation/ui/pages/carro_page.dart';
import 'package:flutter/material.dart';

void main() {
  Inject.init();
  runApp(MaterialApp(
    home: CarroPage(),
  ));
}
