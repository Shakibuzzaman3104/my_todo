import 'package:flutter/material.dart';
import 'package:mynotes/views/main_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          textTheme: Theme.of(context).textTheme.copyWith(
                title: TextStyle(color: Colors.black,fontSize: 32),
              ),
        ),
      ),
      home: SafeArea(child: MainView()),
    );
  }
}
