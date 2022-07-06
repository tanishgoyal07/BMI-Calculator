import 'package:bmicalculator/Homepage.dart';
import 'package:bmicalculator/OurStore.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() => runApp(VxState(
    store: OurStore(),
    child: MyApp(),
  ));
  
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  { 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}