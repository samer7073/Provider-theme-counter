// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_statemangmenyprovider1/provider/counter_provider.dart';
import 'package:flutter_application_statemangmenyprovider1/provider/theme_provider.dart';
import 'package:flutter_application_statemangmenyprovider1/screens/counter.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, child) {
        final provider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          theme: provider.theme,
          home: Counter(),
        );
      },
    );
  }
}
