import 'package:flutter/material.dart';

class BoilingPointElevation extends StatefulWidget {
  const BoilingPointElevation({super.key});
  @override
  State<BoilingPointElevation> createState() => _BPE();
}

//TODO: implement this page

// 1. INPUT:
//      Molality (mol/kg) (*10^)
//      Ebullioscopic Constant (K*kg/mol) (*10^)
//      Van't Hoff factor

// 2. FORMULA:
//      v*m*c    {v-van't hoff factor, m-molality, c-ebullioscopic constant}

class _BPE extends State<BoilingPointElevation> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold();
  }
}
