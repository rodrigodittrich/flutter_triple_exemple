import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple_exemple/src/task_module/other_page.dart';
import 'package:flutter_triple_exemple/src/task_module/task_module_page.dart';

class TaskModuleModule extends Module {

  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const TaskModulePage());
    r.child('/other', child: (context) => const OtherPage());
  }
}