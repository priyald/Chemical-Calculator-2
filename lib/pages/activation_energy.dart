import 'package:flutter/material.dart';

class ActivationEnergy extends StatefulWidget {
  const ActivationEnergy({super.key});
  @override
  State<ActivationEnergy> createState() => _AEne();
}

//TODO: implement this page

// 1. INPUT:
//     Temperature (C, F, K)
//     Reaction rate constant (1/s) (*10^)
//     Pre-exponenetial constant (1/s) (*10^)

// 2. FORMULA:
//     -R*T*log(r/c)   {T - temperature, r - rate constant, c - pre-exponential constant}

class _AEne extends State<ActivationEnergy> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold();
  }
}
