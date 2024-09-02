import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/presentation/screens/home_screen.dart';

void main()
{
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}



