import 'package:flutter/foundation.dart';


class Time extends ChangeNotifier{

  int counter = 60;
  int getcounter() => counter;

  updateTime(){
    counter -- ;
    notifyListeners();
  }
}

class userName extends ChangeNotifier{

  String name = "Muhammad Talha";
  getName () => name;
  updateName (String u_name){
    name = u_name ;
    notifyListeners();   
  }

}