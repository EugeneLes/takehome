import 'package:flutter/material.dart';
import 'package:takehome/home_page.dart';

import 'di/di.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late Future<bool> _dependencyInitFuture;
  @override
  void initState() {
    super.initState();
    _dependencyInitFuture = _configureDependencies();
  }

  Future<bool> _configureDependencies() async {
    try {
      configureDependencies();
      return true;
    } catch (e) {
      print('Failed to configure dependencies: $e');
      return false;
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple News Client',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FutureBuilder(
          future: _dependencyInitFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data == true) {
              return const HomePage(title: 'News');
            } else {
              return const CircularProgressIndicator();
            }
          }),
    );
  }
}