import 'package:flutter/material.dart';
import 'package:e_kemuning/./StackHome.dart';
import 'package:e_kemuning/Pages/location_maps.dart';

class detailsWilayah extends StatelessWidget {
  const detailsWilayah({Key? key}) : super(key: key);

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
          'Wilayah',
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
                  height: 250,
                  child: Image.asset('assets/images/maps.png'),
                ),
                SizedBox(
                  height: 24,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: const Text('Informasi Grafik'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 182 - 10,
                          height: 91,
                          child: Image.asset('assets/images/Group 5624.png'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          width: 182 - 10,
                          height: 91,
                          child: Image.asset('assets/images/Group 5623.png'),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: const Text('Tentang Kemuning'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Text(
                            textAlign: TextAlign.justify,
                            'Kemuning adalah sebuah kecamatan di Kota Palembang, Sumatra Selatan, Indonesia. Kecamatan ini merupakan kecamatan hasil pemekaran dari kecamatan Ilir Timur I pada tahun 2000, sekolah negeri unggulan banyak terdapat di kecamatan ini diantaranya SMP Negeri 9 Palembang, SMA Negeri 3 Palembang, SMA Negeri 6 Palembang, SMA Plus Negeri 17 Palembang, dan SMK Sumatera Selatan.',
                            style: TextStyle(color: Color(0XFFADADAD)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
