import 'package:flutter/material.dart';

class FreezingPointDepression extends StatefulWidget {
  const FreezingPointDepression({super.key});
  @override
  State<FreezingPointDepression> createState() => _FPD();
}

//TODO: implement this page

// 1. INPUT:
//      Molality (mol/kg) (*10^)
//      Cryoscopic Constant (K*kg/mol) (*10^)
//      Van't Hoff factor

// 2. FORMULA:
//      v*m*c    {v-van't hoff factor, m-molality, c-cryoscopic constant}

class _FPD extends State<FreezingPointDepression> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold();
  }
}
