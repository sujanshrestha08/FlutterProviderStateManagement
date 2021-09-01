import 'dart:async';
import 'dart:ffi';
import 'package:fetch/timer_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // var initalValue = 3600;

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (t) {
      var timerInfo = Provider.of<TimerInfo>(context, listen: false);
      timerInfo.updateRemainingTime();
      // setState(() {
      //   initalValue--;
      // });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("-----Running-----");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset("images/stopwatch.png"),
            SizedBox(height: 30,),
            Consumer<TimerInfo>(
              builder: (context, data, child){
                return Text(data.getRemainingTime().toString(),
              style: TextStyle(fontSize: 75),
            );
              })
            
          ],
        ),
    
      ),
    );
  }


}