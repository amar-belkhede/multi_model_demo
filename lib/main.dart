import 'package:animation_travel_app/animation_travel_app.dart';
import 'package:custom_dropdown/demo_page.dart';
import 'package:e_commerce_app/e_commerce_app.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable_package_demo/injectable_package_demo.dart';
import 'package:injectable_package_demo/injection.dart';
import 'package:injectable_package_demo/presentation/counter_change_notifier.dart';
import 'package:provider/provider.dart';
import 'package:register_login/register_login.dart';

final getIt = GetIt.instance;
void main() {
  configureInjection(getIt, Env.prod);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => getIt<CounterChangeNotifier>()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            InjectableDemopackageButton(),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DemoCustomDropdownPage()),
                );
              },
              child: Text("Custom dropdown page"),
            ),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterLoginDemo()),
                );
              },
              child: Text("Register Login Demo page"),
            ),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TravelApp()),
                );
              },
              child: Text("Animated travel app"),
            ),
            FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ECommerceApp()),
                  );
                },
                child: Text("E commerce app"))
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
