import 'package:flutter/material.dart';

import 'lifecycle_manager.dart';
import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LifeCycleManager(
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          body: Center(
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
