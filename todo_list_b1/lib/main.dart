import 'package:flutter/material.dart';
import 'package:todo_list_b1/categrory/create_or_edit.dart';
import 'package:todo_list_b1/onborading/onboarding_child_page.dart';
import 'package:todo_list_b1/onborading/onboarding_child_view.dart';
//import 'package:todo_list_b1/main/main_page.dart';
import 'package:todo_list_b1/wellcome/wellcome_page.dart';
//import 'package:todo_list_b1/onborading/onboarding_child_view.dart';
//import 'package:todo_list_b1/ui.splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CreateOrEdit(),
    );
  }
}
