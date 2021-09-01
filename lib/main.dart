import 'package:fetch/timer_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'myhomepage.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => TimerInfo(),
        child: MyHomePage(),

      ),
    );
  
}
