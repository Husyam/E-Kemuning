import 'package:e_kemuning/Pages/locationMaps.dart';
import 'package:flutter/material.dart';
import 'package:e_kemuning/Home.dart';
import 'package:e_kemuning/Pages/stack.dart';
import 'package:e_kemuning/StackHome.dart';
import 'package:e_kemuning/Pages/detail_wilayah.dart';

void main() {
  runApp(const MyApp());
}

//API KEY MAPS
// AIzaSyAyrtHyjvYwDZrTofErb62HvyuiWnSFhGk

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StackHome(),
    );
  }
}




