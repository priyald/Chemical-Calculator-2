import 'package:chem_calc/common%20widgets/appbar.dart';
import 'package:chem_calc/constants.dart';
import 'package:flutter/material.dart';

class CommonScreen extends StatefulWidget {
  final int page;
  static const String routeName = '/common-page';
  const CommonScreen({super.key, required this.page});
  @override
  State<CommonScreen> createState() => _CommonScreenState();
}

class _CommonScreenState extends State<CommonScreen> {
  late double width = MediaQuery.of(context).size.width;
  late double height = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(heading: names[widget.page], size: height - 300),
    );
  }
}
