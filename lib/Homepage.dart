import 'package:bmicalculator/OurStore.dart';
import 'package:bmicalculator/Result.dart';
import 'package:bmicalculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OurStore store = VxState.store as OurStore;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 7, 78, 136),
          centerTitle: true,
          title: Text("BMI Calcutor", style: TextStyle()),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: VxBuilder(
                  mutations: {Changegender},
                  builder: (context , _ , __)=> Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () => Changegender("Female"),
                        child: Card(
                          color: store.femaleCard,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                color: Colors.white,
                                size: 70,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () => Changegender("Male"),
                        child: Card(
                          color: store.maleCard,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male, color: Colors.white, size: 70),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: VxBuilder(
                      mutations: {Changeweight},
                      builder: (context , _ , __)=> Card(
                        color: Colors.cyan,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () =>
                                        Changeweight(store.weight - 1),
                                    icon: Icon(Icons.remove_circle,
                                        color: Colors.white)),
                                Text(
                                  store.weight.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () =>
                                        Changeweight(store.weight + 1),
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.white)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: VxBuilder(
                      mutations: {Changeage},
                      builder: (context , _ , __)=>Card(
                        color: Colors.cyan,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () => Changeage(store.age - 1),
                                    icon: Icon(Icons.remove_circle,
                                        color: Colors.white)),
                                Text(
                                  store.age.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () => Changeage(store.age + 1),
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.white)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: VxBuilder(
                      mutations: {Changeheight},
                      builder: (context , _ , __)=> Card(
                        color: Colors.cyan,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Height",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Text(
                                      store.height.toString(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Cm",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 15.0,
                                    ),
                                    overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 30.0,
                                    ),
                                    thumbColor: Color.fromARGB(255, 9, 44, 61),
                                    overlayColor: Color.fromARGB(255, 176, 237, 251),
                                    activeTrackColor: Colors.white,
                                    inactiveTrackColor: Color(0xFF8D8E98),
                                  ),
                                  child: Slider(
                                    value: store.height.toDouble(),
                                    min: 50,
                                    max: 250,
                                    onChanged: (double newValue) =>
                                        Changeheight(newValue.toInt()),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: InkWell(
                  child: Card(
                    color: Color.fromARGB(255, 26, 133, 195),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Calculate",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    final calc = Calculator(height: store.height, weight: store.weight);
                    final bmi = calc.calculate();
                    final result = calc.getResult();
                    
                    Navigator.push(context, MaterialPageRoute(
                      builder: (builder) => Result(bmi: bmi, result: result)));
                  },
              ),
            ),
          ],
        ));
  }
}
