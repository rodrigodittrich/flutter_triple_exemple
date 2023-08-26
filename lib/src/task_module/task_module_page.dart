import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TaskModulePage extends StatelessWidget {

  const TaskModulePage({ 
      super.key,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TaskModulePage'), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Modular.to.navigate('/task-module/other'), 
          child: const Text('Outra página')
        ),
      ),
    );
  }
}