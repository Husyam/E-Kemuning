import 'package:flutter/material.dart';

//import 'package:scroll_indicator/scroll_indicator.dart';
// import 'package:e_kemuning/Pages/stack.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('E-Kemuning'),
      ),*/
      backgroundColor: Color(0XFFFFFFFF),
      body: MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Column(
                children: <Widget>[
                  // Flexible(
                  //   flex: 1,
                  //   child: Container(
                  //     color: Color(0XFF0196FF),
                  //   ),
                  // ),
                  Flexible(
                    child: Container(
                      color: Color(0XFF0196FF),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 255),
                        child: InkWell(),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'E-Kemuning',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(width: 191,),
                  Icon(Icons.notification_important, color: Colors.white,),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 34,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 380,
                          height: 210,
                          decoration: BoxDecoration(
                            //color: Colors.amber,
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/Home Banner.png'),
                              fit: BoxFit.cover,
                            ),
                            // border: Border.all(
                            //   width: 1,
                            // ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 380,
                          height: 210,
                          decoration: BoxDecoration(
                            //color: Colors.amber,
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/Home Banner.png'),
                              fit: BoxFit.cover,
                            ),
                            // border: Border.all(
                            //   width: 1,
                            // ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        child: Text(
                          'Tentang Kemuning',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 83,
                                height: 83,
                                padding: EdgeInsets.all(21),
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF0196FF).withOpacity(0.05),
                                  border: Border.all(
                                      color: const Color(0xFF0196FF),
                                      width: 0,
                                      style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(24),
                                  //color: Colors.transparent,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Ink.image(
                                  image: AssetImage('assets/images/map.png'),
                                  height: 40,
                                  width: 40,
                                  //fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Wilayah'),
                          ],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 83,
                                height: 83,
                                padding: EdgeInsets.all(21.0),
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF0196FF).withOpacity(0.05),
                                  border: Border.all(
                                      color: const Color(0xFF0196FF),
                                      width: 0,
                                      style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(24),
                                  //color: Colors.transparent,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Ink.image(
                                  image: AssetImage(
                                      'assets/images/personalcard.png'),
                                  height: 40,
                                  width: 40,
                                  //fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Kelurahan'),
                          ],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 83,
                                height: 83,
                                padding: EdgeInsets.all(21.0),
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF0196FF).withOpacity(0.05),
                                  border: Border.all(
                                      color: const Color(0xFF0196FF),
                                      width: 0,
                                      style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(24),
                                  //color: Colors.transparent,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Ink.image(
                                  image:
                                      AssetImage('assets/images/status-up.png'),
                                  height: 40,
                                  width: 40,
                                  //fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Potensi'),
                          ],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 83,
                                height: 83,
                                padding: EdgeInsets.all(21.0),
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF0196FF).withOpacity(0.05),
                                  border: Border.all(
                                      color: const Color(0xFF0196FF),
                                      width: 0,
                                      style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(24),
                                  //color: Colors.transparent,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Ink.image(
                                  image: AssetImage('assets/images/lovely.png'),
                                  height: 40,
                                  width: 40,
                                  //fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Program Kasih'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        child: Text(
                          'Layanan Publik',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 83,
                                height: 83,
                                padding: EdgeInsets.all(21),
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF0196FF).withOpacity(0.05),
                                  border: Border.all(
                                      color: const Color(0xFF0196FF),
                                      width: 0,
                                      style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(24),
                                  //color: Colors.transparent,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Ink.image(
                                  image: AssetImage('assets/images/alarm.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Pengaduan'),
                          ],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 83,
                                height: 83,
                                padding: EdgeInsets.all(21),
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF0196FF).withOpacity(0.05),
                                  border: Border.all(
                                      color: const Color(0xFF0196FF),
                                      width: 0,
                                      style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(24),
                                  //color: Colors.transparent,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Ink.image(
                                  image: AssetImage('assets/images/note-2.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Persuratan'),
                          ],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 83,
                                height: 83,
                                padding: EdgeInsets.all(21),
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF0196FF).withOpacity(0.05),
                                  border: Border.all(
                                      color: const Color(0xFF0196FF),
                                      width: 0,
                                      style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(24),
                                  //color: Colors.transparent,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Ink.image(
                                  image: AssetImage(
                                      'assets/images/shield-tick.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Peizinan'),
                          ],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 83,
                                height: 83,
                                padding: EdgeInsets.all(21),
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF0196FF).withOpacity(0.05),
                                  border: Border.all(
                                      color: const Color(0xFF0196FF),
                                      width: 0,
                                      style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(24),
                                  //color: Colors.transparent,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Ink.image(
                                  image: AssetImage('assets/images/medal.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Program'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Divider(
                height: 21,
                thickness: 10,
                indent: 5,
                endIndent: 0,
                color: Color(0XFFF6F6F6),
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        child: Text(
                          'Nomor Penting',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 83,
                                height: 83,
                                padding: EdgeInsets.all(21.0),
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF0196FF).withOpacity(0.05),
                                  border: Border.all(
                                      color: const Color(0xFF0196FF),
                                      width: 0,
                                      style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(24),
                                  //color: Colors.transparent,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Ink.image(
                                  image: AssetImage(
                                      'assets/images/call-calling.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Wilayah'),
                          ],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 83,
                                height: 83,
                                padding: EdgeInsets.all(21),
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF0196FF).withOpacity(0.05),
                                  border: Border.all(
                                      color: const Color(0xFF0196FF),
                                      width: 0,
                                      style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(24),
                                  //color: Colors.transparent,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Ink.image(
                                  image: AssetImage(
                                      'assets/images/call-calling.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Damkar'),
                          ],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 83,
                                height: 83,
                                padding: EdgeInsets.all(21),
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF0196FF).withOpacity(0.05),
                                  border: Border.all(
                                      color: const Color(0xFF0196FF),
                                      width: 0,
                                      style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(24),
                                  //color: Colors.transparent,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Ink.image(
                                  image: AssetImage(
                                      'assets/images/call-calling.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Ambulance'),
                          ],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 83,
                                height: 83,
                                padding: EdgeInsets.all(21),
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF0196FF).withOpacity(0.05),
                                  border: Border.all(
                                      color: const Color(0xFF0196FF),
                                      width: 0,
                                      style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(24),
                                  //color: Colors.transparent,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Ink.image(
                                  image: AssetImage(
                                      'assets/images/call-calling.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Darurat 112'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        'UMKM',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {},
                            child: Ink.image(
                              image: AssetImage('assets/images/Kerajinan.png'),
                              height: 150,
                              width: 180,
                              fit: BoxFit.cover,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    'Kerajinan',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          child: InkWell(
                            onTap: () {},
                            child: Ink.image(
                              image: AssetImage('assets/images/Kerajinan.png'),
                              height: 150,
                              width: 180,
                              fit: BoxFit.cover,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    'Kerajinan',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          child: InkWell(
                            onTap: () {},
                            child: Ink.image(
                              image: AssetImage('assets/images/Kerajinan.png'),
                              height: 150,
                              width: 180,
                              fit: BoxFit.cover,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: const Text(
                                    'Kerajinan',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
