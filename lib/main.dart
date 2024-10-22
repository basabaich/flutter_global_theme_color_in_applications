// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import './global/theme_extension.dart';
import './global/global_them_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: GlobalThemData.lightThemeData.copyWith(
        useMaterial3: true, // Enable Material 3
      ),
      darkTheme:
          GlobalThemData.darkThemeData, // Use dark theme from global class
      themeMode:
          ThemeMode.system, // Automatically switches between light/dark mode
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Access the current theme's colorScheme
    final colorScheme = Theme.of(context).colorScheme;
    final customColors = Theme.of(context).extension<CustomColors>();
    print(customColors?.custom);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.primary, // AppBar using primary color
        foregroundColor: colorScheme.onPrimary, // AppBar text/icon color
        title: const Text('App Bar Title'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              elevation: 10,
              shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Container(
                  clipBehavior: Clip.none,
                  color: colorScheme.surface,
                  padding: const EdgeInsets.all(15),
                  width: 400,
                  height: 150,
                  child: Text(
                    'This is a Card widget',
                    style: TextStyle(
                      color: colorScheme.onSurface,
                    ),
                  )),
            ),
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                color: customColors?.onCustom,
                //print(customColors?.custom);
                //?.custom ??
                //  const Color.fromARGB(255, 160, 147, 35),
                fontSize: 18,
              ),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                color: customColors?.custom ?? Colors.black,
                fontSize: 38,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: colorScheme.secondary, // FAB background color
        foregroundColor: colorScheme.onSecondary, // FAB icon/text color
        child: const Icon(Icons.add),
      ),
    );
  }
}
