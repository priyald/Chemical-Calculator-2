import 'package:flutter/material.dart';

class StandardFreeEnergy extends StatefulWidget {
  const StandardFreeEnergy({super.key});
  @override
  State<StandardFreeEnergy> createState() => _SFE();
}

//TODO: implement this page

// 1. INPUT:
//      temperature (C, F, K)
//      equilibrium constand ( *10^)
//            OR
//      standard free energy (J/mol) ( *10^)

// 2. FORMULA:
//      if standard free energy being calculated
//          -R*T*ln(K)      {T-temperature, K-equilibrium constant}
//      if equilibrium constant being calculated
//          e^(-G/(R*T))    {T-temperature, G-standard free energy}

class _SFE extends State<StandardFreeEnergy> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold();
  }
}
