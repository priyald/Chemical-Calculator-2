import 'package:flutter/material.dart';

class RateConstant extends StatefulWidget {
  const RateConstant({super.key});
  @override
  State<RateConstant> createState() => _RCon();
}

//TODO: implement this page

// 1. INPUT:
//      Temperature (C, K, F)
//      Activation Energy (J/mol) (*10^)
//      Pre-exponential factor (s^-1) (*10^)

// 2. FORMULA:
//      A*e^(-E/RT)    {A - pre-exponenital factor, E-activation energy, T - temperature}

class _RCon extends State<RateConstant> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold();
  }
}
