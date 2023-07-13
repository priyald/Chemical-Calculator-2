import 'package:flutter/material.dart';

class BeerLambertLaw extends StatefulWidget {
  const BeerLambertLaw({super.key});
  @override
  State<BeerLambertLaw> createState() => _BLL();
}

//TODO: implement this page

// 1. INPUT:
//      Molar Absorption Coefficient/Molar Absorptivity (1/M*cm) (*10^)
//      Path length (cm) (*10^)
//      Absorbance (*10^)

// 2. FORMULA:
//     A/(l*a)    {A - absorbance, L - length, e , a - molar absorptivity}

class _BLL extends State<BeerLambertLaw> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold();
  }
}
