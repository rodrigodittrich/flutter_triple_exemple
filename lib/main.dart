import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple_exemple/src/app.dart';
import 'package:flutter_triple_exemple/src/core_module.dart';

void main() {
  runApp(
    ModularApp(
      module: CoreModule(),
      child: const App(),
      ),
    );
}