import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/sharedData.dart';
import 'package:statemanagement/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:
            ChangeNotifierProvider(create: (context) => userName(), child: Home()),
      ),
    );
  }
}
