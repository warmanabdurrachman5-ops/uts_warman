import 'package:flutter/material.dart';
import 'package:uts_warman_abdurachman_lp3i_karawang/Soal/Task1.dart';
class MyWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task1(), 
    );
  }
}

void main(List<String> args) {
  runApp(const MyWidget());
}
