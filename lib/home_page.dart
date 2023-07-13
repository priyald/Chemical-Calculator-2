import 'package:chem_calc/common%20widgets/appbar.dart';
import 'package:chem_calc/common%20widgets/common_page_layout.dart';
import 'package:chem_calc/constants.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  static const String routeName = '/home-page';
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//basic home page with all the buttons
//buttons redirect to rest of the pages
class _MyHomePageState extends State<MyHomePage> {
  late double width = MediaQuery.of(context).size.width;
  late double height = MediaQuery.of(context).size.height;

//widget with row of 3 buttons each
  Widget rowOfButtons(int num) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: customButton(num)),
          Expanded(child: customButton(num + 1)),
          Expanded(child: customButton(num + 2)),
        ],
      ),
    );
  }

//custom button that redirects the page to each functionality
//list of the button's text and their functions in constants.dart file
//ind argument accesses these values
  Widget customButton(int ind) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CommonScreen(page: ind)))
        },

        //styling button
        style: ElevatedButton.styleFrom(
          fixedSize: Size.fromHeight(height),
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
          ),
          shadowColor: Colors.black,
        ),
        //

        //content of button
        child: Text(
          names[ind],
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: height / 30),
        ),
        //
      ),
    );
  }

//home page contains:
// 1. app bar - Text('Chemical Calculator')
// 2. 3x3 grid of buttons
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      appBar: CommonAppBar(
        heading: 'Chemical Calculator',
        size: height,
      ),

      //body
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          rowOfButtons(0),
          rowOfButtons(3),
          rowOfButtons(6),
        ]),
      ),
    );
  }
}
