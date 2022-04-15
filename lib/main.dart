import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  bool _switchValue = false;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text(
              'Animated Container',
              style: TextStyle(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.black),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                width: 250.0,
                height: 250.0,
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                duration: const Duration(seconds: 2),

              ),
              const SizedBox(
                height: 15,
              ),
              CupertinoSwitch(
                  value: _switchValue,
                  onChanged: (bool value) {
                    setState(() {
                      _switchValue = value;
                    });
                  }),
            ],
          ),
        ),
      ),
    );

//
  }
}
