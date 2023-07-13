import 'package:flutter/material.dart';

class BufferPH extends StatefulWidget {
  const BufferPH({super.key});
  @override
  State<BufferPH> createState() => _BPH();
}

//TODO: implement this page

// 1. INPUT:
//      Acid/base dissociation constant (*10^)
//      Concentration of acid base (mol/L) (*10^)
//      Concentration of salt (mol/L) (*10^)

// 2. FORMULA:
//      log(A) + log(S/C)   {A - acid/ase dissociation, S - salt concentration, C - acid/base concentration}

class _BPH extends State<BufferPH> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold();
  }
}
