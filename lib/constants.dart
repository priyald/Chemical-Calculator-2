//button/page names
// ignore_for_file: prefer_const_constructors

import 'package:chem_calc/pages/activation_energy.dart';
import 'package:chem_calc/pages/beer_lambert_law.dart';
import 'package:chem_calc/pages/boiling_point_elev.dart';
import 'package:chem_calc/pages/buffer_ph.dart';
import 'package:chem_calc/pages/freezing_point_dep.dart';
import 'package:chem_calc/pages/ionic_strength.dart';
import 'package:chem_calc/pages/molarity.dart';
import 'package:chem_calc/pages/rate_constant.dart';
import 'package:chem_calc/pages/standard_free_energy.dart';
import 'package:flutter/material.dart';

List<String> names = [
  'Buffer pH',
  'Activation Energy',
  'Freezing Point Depression',
  'Boiling Point Elevation',
  'Ionic Strength',
  'Beer Lambert Law',
  'Molarity',
  'Rate Constant',
  'Standard Free Energy'
];

//classes building respective pages
List<Widget> pages = [
  BufferPH(),
  ActivationEnergy(),
  FreezingPointDepression(),
  BoilingPointElevation(),
  IonicStrength(),
  BeerLambertLaw(),
  Molarity(),
  RateConstant(),
  StandardFreeEnergy(),
];



//constants to add:
//  R = 8.314     gas constant

//functions to create
//  1. converting fahrenheit to celsius 
//        (F-32)*5/9
//  2. converting celsius to fahrenheit
//        (C*9/5)+32
//  3. converting celsius to kelvin
//        C+273
//  4. converting kelvin celsius
//        K-273
//  5. converting fahrenheit to kelvin
//        use function 1 and then 3
//  6. converting kelvin to fahrenheit
//        use function 4 and then 2