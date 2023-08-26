import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple_exemple/src/home_page.dart';

class CoreModule extends Module {

  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
  }
}