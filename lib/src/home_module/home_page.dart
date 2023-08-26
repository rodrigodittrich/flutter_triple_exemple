import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {

  const HomePage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Home Page'), centerTitle: true),
           body: Center(
            child: ElevatedButton(
              onPressed: () => Modular.to.navigate('/task-module/'), 
              child: const Text('Módulo Tarefas')
            ),
           ),
       );
  }
}