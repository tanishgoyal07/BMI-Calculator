import 'package:bmicalculator/Homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculator/OurStore.dart';
import 'package:velocity_x/velocity_x.dart';

class Result extends StatelessWidget {
  final String bmi;
  final String result;

  Result({required this.bmi, required this.result});

  @override
  Widget build(BuildContext context) {
    OurStore store = VxState.store as OurStore;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 167, 213, 244),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left : 20.0 , right : 20 , top: 180),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Text("Results",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: 30,
                          ),
                          Text(store.sex,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text(store.age.toString(),
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: 30,
                          ),
                          Text("BMI: " + bmi,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text(result,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 50,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:30.0 , left:8 , right: 8),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 70,
                        child: Card(
                          color: Color.fromARGB(255, 24, 118, 159),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Recalculate",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Expanded(child: Container()),
                ],
              ),
            ))
          ]),
    );
  }
}
