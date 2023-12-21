import 'package:flutter/material.dart';

void main() {
  //abc abc
  runApp(const MyApp());
  //dashfkasnc,mxznjgasjdfasd
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Scaffold(appBar: AppBar(title: Text("App"),), body: Center(child: Text('Flutter Demo Home Page'),)),
    );
  }
}
