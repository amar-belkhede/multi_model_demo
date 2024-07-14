library injectable_package_demo;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable_package_demo/infrastructure/counter_repository.dart';
import 'package:injectable_package_demo/injection.dart';
import 'package:injectable_package_demo/presentation/counter_change_notifier.dart';
import 'package:provider/provider.dart';

class InjectableDemopackageButton extends StatelessWidget {
  const InjectableDemopackageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const CounterPage(title: "InjectableDemoApp")),
        );
      },
      child: Text("InjectableDemoApp"),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key, required this.title});

  final String title;

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Consumer<CounterChangeNotifier>(
              builder: (context, counter, child) {
                return Text(
                  '${counter.value}',
                  style: Theme.of(context).textTheme.headlineLarge,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            heroTag: "decrement",
            onPressed: Provider.of<CounterChangeNotifier>(context).decrement,
            tooltip: 'decrement',
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            heroTag: "increment",
            onPressed: Provider.of<CounterChangeNotifier>(context).increment,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
