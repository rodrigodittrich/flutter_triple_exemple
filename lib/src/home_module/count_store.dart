
import 'package:flutter_triple/flutter_triple.dart';

class CountStore extends Store<int> {
  
  CountStore() : super(0);

  Future<void> increment() async {
    setLoading(true);
    await Future.delayed(const Duration(seconds: 1));
    int value = state + 1;
    if(value < 5) {
      update(value);
    } else {
      setError(Exception('Valor limite é = 5'));
    }
  }
}