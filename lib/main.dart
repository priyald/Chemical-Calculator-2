import 'package:chem_calc/home_page.dart';
import 'package:flutter/material.dart';

//running the app
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //standard root of app
  //light mode on
  //purple color scheme
  //redirects to home page
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        applyElevationOverlayColor: true,
        scaffoldBackgroundColor: Colors.deepPurple[200],
      ),
      home: const MyHomePage(),
    );
  }
}
