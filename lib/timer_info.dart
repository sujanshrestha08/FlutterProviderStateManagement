import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';


class TimerInfo extends ChangeNotifier
 {
  
  int _remainingTime = 3600;
  int getRemainingTime() => _remainingTime;

  updateRemainingTime(){
   _remainingTime--;
   notifyListeners(); 
  }
}
