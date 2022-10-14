import 'dart:async';

import 'package:e_kemuning/StackHome.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 10),
      (() => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const StackHome(),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 300.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Icon(
                  Icons.rocket_launch_rounded,
                  color: whiteColor,
                  size: 80,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'E - Kemuning',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'powered by ',
                      style: whiteTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'synapse academy',
                      style: orangeTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
