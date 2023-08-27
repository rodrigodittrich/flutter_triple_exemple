import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:flutter_triple_exemple/src/home_module/count_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({ super.key });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var store = Modular.get<CountStore>();

  @override
  void initState() {
    super.initState();
    store.observer(
      onError: (error) => print(error.toString()),
      onLoading: (loading) => print(loading)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScopedBuilder(
            store: store,
            onLoading: (context) => const CircularProgressIndicator(),
            onError: (context, error) => Text(error.toString()),
            onState: (context, state) => Text('ScopedBuilder: Count =  $state'),
          ),
          const SizedBox(height: 30),
          TripleBuilder(
            store: store,
            builder: (context, triple) => Text('TripleBuilder: Count = ${triple.state}'),
          ),
          const SizedBox(height: 50),
          Center(
            child: ElevatedButton(
              onPressed: () => Modular.to.navigate('/task-module/'), 
              child: const Text('Navegar para módulo tarefas')
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => store.increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}