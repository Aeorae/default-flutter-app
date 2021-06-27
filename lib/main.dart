import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fedoraeProvider = Provider((_) => 'Fedorae Riverpod');

void main() {
  runApp(
    ProviderScope(
      child: FedoraeApp(),
    ),
  );
}

class FedoraeApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(fedoraeProvider);

    return MaterialApp(
        title: 'Fedorae',
        home: Scaffold(
            appBar: AppBar(title: const Text('Fedorae Riverpod')),
            body: Center(child: Text(value))));
  }
}
