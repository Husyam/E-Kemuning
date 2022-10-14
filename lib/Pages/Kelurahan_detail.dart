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
                Card(
                  elevation: 0.5,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        //leading: Icon(Icons.arrow_drop_down_circle),
                        title: const Text('Kel 20 Ilir D II'),
                        subtitle: Text(
                          '1,413 Orang',
                          style: TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 24.0,
                            color: Colors.blue,
                          )
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 0.5,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        onTap: (){},
                        //leading: Icon(Icons.arrow_drop_down_circle),
                          title: const Text('Kel Ario Kemuning'),
                          subtitle: Text(
                            '2,441 Orang',
                            style: TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 24.0,
                            color: Colors.blue,
                          )
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 0.5,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        //leading: Icon(Icons.arrow_drop_down_circle),
                          title: const Text('Kel Pahlawan'),
                          subtitle: Text(
                            '2,523 Orang',
                            style: TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 24.0,
                            color: Colors.blue,
                          )
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 0.5,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        //leading: Icon(Icons.arrow_drop_down_circle),
                          title: const Text('Kel Pipa Reja'),
                          subtitle: Text(
                            '1,231 Orang',
                            style: TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 24.0,
                            color: Colors.blue,
                          )
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 0.5,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        //leading: Icon(Icons.arrow_drop_down_circle),
                          title: const Text('Kel Sekip Jaya'),
                          subtitle: Text(
                            '3,421 Orang',
                            style: TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 24.0,
                            color: Colors.blue,
                          )
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 0.5,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        //leading: Icon(Icons.arrow_drop_down_circle),
                          title: const Text('Kel Talang Aman'),
                          subtitle: Text(
                            '1,773 Orang',
                            style: TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 24.0,
                            color: Colors.blue,
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
