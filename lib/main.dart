import 'package:flutter/material.dart';
import 'Soal/Soal1.dart';

class Soal1 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Soal1(), 
    );
  }
}

void main(List<String> args) {
  runApp(const Soal1());
}