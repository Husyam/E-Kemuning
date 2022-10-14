import 'package:e_kemuning/Pages/Kelurahan_detail.dart';
import 'package:e_kemuning/Pages/keterangan.dart';
import 'package:e_kemuning/Pages/perizinan.dart';
import 'package:e_kemuning/Pages/profil.dart';
import 'package:flutter/material.dart';

//import 'package:e_kemuning/Home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:e_kemuning/Pages/detail_wilayah.dart';
import 'package:e_kemuning/Style/font_style.dart';

//import 'Pages/Lisview_activitiy.dart';

class StackHome extends StatelessWidget {
  const StackHome({Key? key}) : super(key: key);
  final String _phoneNumberPolis = '110';
  final String _phoneNumber = '113';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'E-Kemuning',
          style: mainHeader,
        ),
        backgroundColor: const Color(0XFF0196FF),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                children: [
                  Container(
                    height: 150,
                    width: 428,
                    decoration: const BoxDecoration(
                      color: Color(0XFF0196FF),
                    ),
                  ),
                ],
              ),
              Positioned(
                  // top: 150,
                  // left: 24,
                  bottom: -80,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 380,
                                height: 210,
                                decoration: BoxDecoration(
                                  //color: Colors.amber,
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Home Banner2.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  // border: Border.all(
                                  //   width: 1,
                                  // ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 380,
                                height: 210,
                                decoration: BoxDecoration(
                                  //color: Colors.amber,
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Home Banner.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  // border: Border.all(
                                  //   width: 1,
                                  // ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 380,
                                height: 210,
                                decoration: BoxDecoration(
                                  //color: Colors.amber,
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/banner 3.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  // border: Border.all(
                                  //   width: 1,
                                  // ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 29 * 3,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 29,
              right: 0,
              bottom: 0,
              left: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      'Tentang Kemuning',
                      style: title,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const ProfilPage();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              width: 83,
                              height: 83,
                              padding: const EdgeInsets.all(21.0),
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
                                image: const AssetImage(
                                    'assets/images/people.png'),
                                height: 40,
                                width: 40,
                                //fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Profil',
                            style: subTitle,
                          ),
                        ],
                      ),
                      // Akhir Potensi Section
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () async {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const detailsWilayah();
                              }));
                            },
                            child: Container(
                              width: 83,
                              height: 83,
                              padding: const EdgeInsets.all(20.0),
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
                                    const AssetImage('assets/images/map.png'),
                                //fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Wilayah',
                            style: subTitle,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const detailskelurahan();
                                // return LisViewActivity(title: 'Data List Kemuning',);
                              }));
                            },
                            child: Container(
                              width: 83,
                              height: 83,
                              padding: const EdgeInsets.all(21.0),
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
                                image: const AssetImage(
                                    'assets/images/personalcard.png'),
                                height: 40,
                                width: 40,
                                //fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Kelurahan',
                            style: subTitle,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 83,
                              height: 83,
                              padding: const EdgeInsets.all(21.0),
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
                                image: const AssetImage(
                                    'assets/images/status-up.png'),
                                height: 40,
                                width: 40,
                                //fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Potensi',
                            style: subTitle,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 83,
                              height: 83,
                              padding: const EdgeInsets.all(21.0),
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
                                image: const AssetImage(
                                    'assets/images/lovely.png'),
                                height: 40,
                                width: 40,
                                //fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Program Kasih',
                            style: subTitle,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 26, right: 0, bottom: 0, left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      'Layanan Publik',
                      style: title,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 2, right: 6, bottom: 2, left: 6),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(24),
                        //color: Colors.transparent,
                        shape: BoxShape.rectangle,
                      ),
                      child: const Text(
                        'Segera Hadir',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
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
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PerizinanPage(),
                                ),
                              );
                            },
                            child: Container(
                              width: 83,
                              height: 83,
                              padding: const EdgeInsets.all(21),
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
                                image: const AssetImage(
                                    'assets/images/note-2.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text('Perizinan'),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const KeteranganPage(),
                                ),
                              );
                            },
                            child: Container(
                              width: 83,
                              height: 83,
                              padding: const EdgeInsets.all(21),
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
                                image: const AssetImage(
                                    'assets/images/shield-tick.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text('Keterangan'),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 83,
                              height: 83,
                              padding: const EdgeInsets.all(21),
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
                                    const AssetImage('assets/images/alarm.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text('Pengaduan'),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 83,
                              height: 83,
                              padding: const EdgeInsets.all(21),
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
                                    const AssetImage('assets/images/medal.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text('Program'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          const Divider(
            height: 16,
            thickness: 10,
            indent: 0,
            endIndent: 0,
            color: Color(0XFFF6F6F6),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 26,
              right: 0,
              bottom: 0,
              left: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: const [
                    Text(
                      'Nomor Penting',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () async {
                                  final call = 'tel:$_phoneNumberPolis';
                                  final text = 'sms:$_phoneNumberPolis';
                                  if (await canLaunch(call)) {
                                    await launch(call);
                                  }
                                },
                                child: Container(
                                  width: 83,
                                  height: 83,
                                  padding: const EdgeInsets.all(21.0),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF0196FF)
                                        .withOpacity(0.05),
                                    border: Border.all(
                                        color: const Color(0xFF0196FF),
                                        width: 0,
                                        style: BorderStyle.none),
                                    borderRadius: BorderRadius.circular(24.0),
                                    //color: Colors.transparent,
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Ink.image(
                                    image: const AssetImage(
                                        'assets/images/call-calling.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text('Polisi'),
                            ],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () async {
                                  final call = 'tel:$_phoneNumber';
                                  final text = 'sms:$_phoneNumber';
                                  if (await canLaunch(call)) {
                                    await launch(call);
                                  }
                                },
                                child: Container(
                                  width: 83,
                                  height: 83,
                                  padding: EdgeInsets.all(21),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF0196FF)
                                        .withOpacity(0.05),
                                    border: Border.all(
                                        color: const Color(0xFF0196FF),
                                        width: 0,
                                        style: BorderStyle.none),
                                    borderRadius: BorderRadius.circular(24),
                                    //color: Colors.transparent,
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Ink.image(
                                    image: const AssetImage(
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
                                    color: const Color(0xFF0196FF)
                                        .withOpacity(0.05),
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
                                    color: const Color(0xFF0196FF)
                                        .withOpacity(0.05),
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
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () async {
                                  final _call = 'tel:$_phoneNumberPolis';
                                  final _text = 'sms:$_phoneNumberPolis';
                                  if (await canLaunch(_call)) {
                                    await launch(_call);
                                  }
                                },
                                child: Container(
                                  width: 83,
                                  height: 83,
                                  padding: EdgeInsets.all(21.0),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF0196FF)
                                        .withOpacity(0.05),
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
                              Text('Darurat 119'),
                            ],
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () async {
                                  final _call = 'tel:$_phoneNumber';
                                  final _text = 'sms:$_phoneNumber';
                                  if (await canLaunch(_call)) {
                                    await launch(_call);
                                  }
                                },
                                child: Container(
                                  width: 83,
                                  height: 83,
                                  padding: EdgeInsets.all(21),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF0196FF)
                                        .withOpacity(0.05),
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
                              Text('DLLAJ'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 16,
            thickness: 10,
            indent: 0,
            endIndent: 0,
            color: Color(0XFFF6F6F6),
          ),
          //Pendidikan
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              right: 24,
              bottom: 0,
              left: 24,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      'Pendidikan',
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
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Ink.image(
                              image: AssetImage('assets/images/sd.png'),
                              height: 150,
                              width: 180,
                              fit: BoxFit.cover,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    'SD',
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
                          // child: Ink.image(
                          //   image: AssetImage('assets/images/sd.png'),
                          //   height: 150,
                          //   width: 180,
                          //   fit: BoxFit.cover,
                          //   child: Align(
                          //     alignment: Alignment.bottomLeft,
                          //     child: Padding(
                          //       padding: const EdgeInsets.all(16.0),
                          //       child: Text(
                          //         'SD',
                          //         textAlign: TextAlign.center,
                          //         style: TextStyle(
                          //           fontSize: 12,
                          //           fontWeight: FontWeight.normal,
                          //           color: Colors.white,
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        child: InkWell(
                          onTap: () {},
                          child: Ink.image(
                            image: AssetImage('assets/images/smp.png'),
                            height: 150,
                            width: 180,
                            fit: BoxFit.cover,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'SMP',
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
                            image: AssetImage('assets/images/sma.png'),
                            height: 150,
                            width: 180,
                            fit: BoxFit.cover,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: const Text(
                                  'SMA',
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
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        child: InkWell(
                          onTap: () {},
                          child: Ink.image(
                            image: AssetImage('assets/images/universitas.png'),
                            height: 150,
                            width: 180,
                            fit: BoxFit.cover,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: const Text(
                                  'UNIVERSITAS',
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
          ),
          //Akhir Pendidikan
          //Darurat
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              right: 24,
              bottom: 0,
              left: 24,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      'Darurat',
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
                            image: AssetImage('assets/images/rumah sakit.png'),
                            height: 150,
                            width: 180,
                            fit: BoxFit.cover,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'Rumah Sakit',
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
                            image: AssetImage('assets/images/Puskesmas.png'),
                            height: 150,
                            width: 180,
                            fit: BoxFit.cover,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'Puskesmas',
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
                            image: AssetImage('assets/images/klinik.png'),
                            height: 150,
                            width: 180,
                            fit: BoxFit.cover,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: const Text(
                                  'Klinik',
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
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        child: InkWell(
                          onTap: () {},
                          child: Ink.image(
                            image: AssetImage('assets/images/apotek.png'),
                            height: 150,
                            width: 180,
                            fit: BoxFit.cover,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: const Text(
                                  'Apotik',
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
          ),
          //Akhir Darurat
          //UMKM
          Padding(
            padding: const EdgeInsets.only(
              top: 26,
              right: 24,
              bottom: 0,
              left: 24,
            ),
            child: Column(
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
                            image: AssetImage('assets/images/Kuliner.png'),
                            height: 150,
                            width: 180,
                            fit: BoxFit.cover,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'Kuliner',
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
                            image: AssetImage('assets/images/fashion.png'),
                            height: 150,
                            width: 180,
                            fit: BoxFit.cover,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: const Text(
                                  'Fashion',
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
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        child: InkWell(
                          onTap: () {},
                          child: Ink.image(
                            image: AssetImage('assets/images/argi.png'),
                            height: 150,
                            width: 180,
                            fit: BoxFit.cover,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: const Text(
                                  'Agribisnis',
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
          ),
          //Akhir UMKM

          //Pelatihan
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              right: 24,
              bottom: 0,
              left: 24,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      'Pelatihan',
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
                            image: AssetImage('assets/images/pembelajaran.png'),
                            height: 150,
                            width: 180,
                            fit: BoxFit.cover,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'Pembelajaran',
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
                            image:
                                AssetImage('assets/images/acara pemerinta.png'),
                            height: 150,
                            width: 180,
                            fit: BoxFit.cover,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'Acara Pemerintah',
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
                            image: AssetImage('assets/images/masyarakat.png'),
                            height: 150,
                            width: 180,
                            fit: BoxFit.cover,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: const Text(
                                  'Acara Masyarakat',
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
          ),
          //Akhir Pelatihan
        ],
      ),
    );
  }
}
