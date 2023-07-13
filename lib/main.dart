import 'package:chem_calc/custom_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
        brightness: Brightness.light,
        useMaterial3: true,
        applyElevationOverlayColor: true,
      ),
      home: const MyHomePage(title: 'Chemical Calculator'),
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
    // ignore: unused_local_variable
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Center(
          child: Text(widget.title,
              style: TextStyle(
                fontSize: height / 15,
                fontFamily: 'Helvatical',
                fontWeight: FontWeight.w600,
                color: Colors.white,
              )),
        ),
        toolbarHeight: height / 6,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.5),
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(onTap: 1, text: 'Buffer pH'),
                  CustomContainer(onTap: 2, text: 'Activation Energy'),
                  CustomContainer(onTap: 3, text: 'Freezing Point Depression'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(onTap: 4, text: 'Boiling Point Elevation'),
                  CustomContainer(onTap: 5, text: 'Ionic Strength'),
                  CustomContainer(onTap: 6, text: 'Beer Lambert Law'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(onTap: 7, text: 'Molarity'),
                  CustomContainer(onTap: 8, text: 'Rate Constant'),
                  CustomContainer(onTap: 9, text: 'Standard Free Energy'),
                ],
              ),
            ]),
      ),
    );
  }
}
