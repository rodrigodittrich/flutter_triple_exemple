import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple_exemple/src/home_module/home_module.dart';

class AppModule extends Module {

  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('/', module: HomeModule());
  }
}