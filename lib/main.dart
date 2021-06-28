import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fedoraeProvider = Provider((_) => 'Fedorae Riverpod Tabs');

void main() {
  runApp(ProviderScope(child: TabBarDemo()));
}

class TabBarDemo extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(fedoraeProvider);

    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text(value),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
