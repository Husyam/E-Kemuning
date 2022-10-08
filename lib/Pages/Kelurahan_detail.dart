import 'package:e_kemuning/Pages/Lisview_activitiy.dart';
import 'package:flutter/material.dart';
import 'package:e_kemuning/./StackHome.dart';
import 'package:e_kemuning/Pages/locationMaps.dart';

class detailskelurahan extends StatelessWidget {
  const detailskelurahan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Kelurahan',
          style: TextStyle(
              color: Colors.black
          ),
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.notifications),
        //   ),
        // ],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(
            top: 0,
            right: 24.0,
            left: 24.0,
          ),
          children: <Widget>[
            // Column(
            //   // mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       child: Row(
            //         children: [
            //           Container(
            //             child: IconButton(
            //               icon: const Icon(
            //                 Icons.arrow_back,
            //                 color: Colors.black,
            //               ),
            //               onPressed: () {
            //                 Navigator.pop(context);
            //               },
            //             ),
            //           ),
            //           Container(
            //             margin: EdgeInsets.only(left: 102),
            //             child: const Text('Wilayah'),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 16,
            // ),
            Column(
              children: [
                Container(
                  width: 380,
                  // height: 250,
                  child: Image.asset('assets/images/Kelurahan.png'),
                ),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
