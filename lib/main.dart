import 'package:flutter/material.dart';
import 'package:test_project/bloc/get_staff_awards_bloc.dart';
import 'package:test_project/model/auth.dart';
import 'package:test_project/model/staff_awards_response.dart';
import 'package:test_project/screens/awards_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AwardsScreen());
  }
}
