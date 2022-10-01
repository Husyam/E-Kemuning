import 'package:flutter/material.dart';
import 'package:e_kemuning/./StackHome.dart';

class comingSoon extends StatelessWidget {
  const comingSoon({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Container(
              child: Center(
                child: Text('Coming Soon', style: TextStyle(fontSize: 54,fontWeight: FontWeight.bold),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}