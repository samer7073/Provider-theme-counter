// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_statemangmenyprovider1/provider/counter_provider.dart';
import 'package:flutter_application_statemangmenyprovider1/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    //final counter = Provider.of<CounterProvider>(context);
    final Theme = Provider.of<ThemeProvider>(context);

    //final count = counter.counter;
    return Scaffold(
      appBar: AppBar(
        title: Text(' Counter '),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Text('le nomre de compte et '),
          ),
          ElevatedButton(
            child: Text('Change Theme'),
            onPressed: () {
              Theme.ChangeTheme();
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          //counter.increment();
        },
      ),
    );
  }
}
