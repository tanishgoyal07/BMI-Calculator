import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";


class OurStore extends VxStore{
  int height = 150;
  int weight = 60;
  int age = 18;
  String sex = "Male" ;
  Color maleCard = Colors.cyan;
  Color femaleCard = Colors.cyan;
}

class Changeheight extends VxMutation<OurStore>{
  final int height;

  Changeheight(this.height); 
  @override
  perform() {
    store!.height = height;
  }
}

class Changeweight extends VxMutation<OurStore>{
  final int weight;

  Changeweight(this.weight);
  @override
  perform() {
    store!.weight = weight;
  }
}

class Changeage extends VxMutation<OurStore>{
  final int age;

  Changeage(this.age);
  @override
  perform() {
    store!.age = age;
  }
}

class Changegender extends VxMutation<OurStore>{
  final String sex;

  Changegender(this.sex);
  @override
  perform() {
    store!.sex = sex;
    if(sex=="Male")
    {
      store!.maleCard = Color.fromARGB(255, 8, 40, 67);
      store!.femaleCard = Colors.cyan;
    }
    else{
      store!.maleCard = Colors.cyan;
      store!.femaleCard = Color.fromARGB(255, 8, 40, 67);
    }
  }
}