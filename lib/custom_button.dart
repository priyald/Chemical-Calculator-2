import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final int onTap;
  final String text;

  const CustomContainer({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 4;
    double width = MediaQuery.of(context).size.width / 3.3;
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: () => {},
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: width / 13,
          ),
        ),
      ),
    );
  }
}
