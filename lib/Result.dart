import 'package:flutter/material.dart';
import 'package:bmicalculator/OurStore.dart';
import 'package:velocity_x/velocity_x.dart';

class Result extends StatelessWidget{

  final String bmi;
  final String result;

  Result({required this.bmi , required this.result});

  @override
  Widget build(BuildContext context){

    OurStore store = VxState.store as OurStore;

    return Scaffold(
      body: Column(
        mainAxisAlignment : MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment : MainAxisAlignment.center,
                children: [
                  Text(
                    "Results",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    store.sex,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    store.age.toString(),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    bmi,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    result,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                ],
              ),
            ))
        ]),

    );
  }
}