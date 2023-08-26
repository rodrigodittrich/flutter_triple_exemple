import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple_exemple/src/home_module/home_page.dart';
import 'package:flutter_triple_exemple/src/task_module/task_module_module.dart';

class HomeModule extends Module {

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
    r.module('/task-module', module: TaskModuleModule());
  }
}