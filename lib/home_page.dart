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

//custom button that redirects the page to each functionality
//list of the button's text and their functions in constants.dart file
//ind argument accesses these values
  Widget customButton(int ind) {
    return TextButton(
      onPressed: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CommonScreen(page: ind)))
      },

      //content of button
      child: Text(
        names[ind],
      ),
      //
    );
  }

//home page contains:
// 1. app bar - Text('Chemical Calculator')
// 2. list of buttons
// 3. welcome screen
// 4. answer pane
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      appBar: CommonAppBar(
        heading: 'Chemical Calculator',
        size: height,
      ),

      //body
      body: Row(
        children: [
          //navbar
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 100,
                    spreadRadius: -50,
                  )
                ],
              ),
              child: SizedBox(
                width: 250,
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Column(
                    children: [
                      const Text(
                        'Content',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                      const Divider(),
                      const SizedBox(height: 10),
                      Expanded(
                        child: ListView.builder(
                          itemCount: pages.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) =>
                              (customButton(index)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //

          //answer pane
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Column(
                children: [
                  const Expanded(
                      child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      'WELCOME!',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w300,
                          color: Colors.purple),
                    )),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 20,
                                  spreadRadius: -15)
                            ],
                          ),
                          child: const Center(child: Text('answer pane')),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
