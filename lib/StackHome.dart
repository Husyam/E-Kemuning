import 'package:e_kemuning/Pages/Kelurahan_detail.dart';
import 'package:flutter/material.dart';

//import 'package:e_kemuning/Home.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:e_kemuning/Pages/detail_wilayah.dart';
import 'package:e_kemuning/Pages/kelurahan';
import 'package:e_kemuning/list_data.dart';

import 'Pages/Lisview_activitiy.dart';

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
        title: const Text(
          'E-Kemuning',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
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
                    padding: const EdgeInsets.only(left: 24),
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
                    Container(
                      child: const Text(
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
                            onTap: () async {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const detailsWilayah();
                              }));
                            },
                            child: Container(
                              width: 83,
                              height: 83,
                              padding: EdgeInsets.all(20.0),
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
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    // return detailskelurahan();
                                    return LisViewActivity(title: 'Data List Kemuning',);
                              }));
                            },
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
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 26,
              right: 0,
              bottom: 0,
              left: 24
            ),
            child: Column(
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
                    SizedBox(width: 8,),
                    Container(
                      padding: EdgeInsets.only(top: 2,right: 6,bottom: 2,left: 6),
                      child: Text(
                        'Segera Hadir',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(24),
                        //color: Colors.transparent,
                        shape: BoxShape.rectangle,
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
                                image:
                                    AssetImage('assets/images/shield-tick.png'),
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
          ),
          Divider(
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
                  child: Column(
                    children: [
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
                              Text('Polisi'),
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
                              Text('Polisi'),
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
                              Text('Damkar'),
                            ],
                          ),
                          SizedBox(
                            width: 16,
                          ),
                        ],
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
          // SizedBox(height: 0,),
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
        ],
      ),
    );
  }
}
