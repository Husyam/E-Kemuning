// import 'package:flutter/material.dart';
// import 'package:e_kemuning/Home.dart';
// import '../main.dart';
//
// class StackHome extends StatelessWidget {
//   const StackHome({Key? key, required List<Widget> children}): super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//      return Scaffold(
//         appBar: AppBar(
//           title: Text('appbarTitle'),
//         ),
//         body: Stack(
//           children: <Widget>[
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.red,
//             ),
//             Container(
//               width: 90,
//               height: 90,
//               color: Colors.green,
//             ),
//             Container(
//               width: 80,
//               height: 80,
//               color: Colors.blue,
//             ),
//           ],
//         ),
//     );
//
//   }
//
// }

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class coba extends StatelessWidget {
  _callNumber() async{
    const number = '08592119XXXX'; //set the number here
    bool? res = await FlutterPhoneDirectCaller.callNumber(number);
  }

  final String _phoneNumber = '112';
  const coba ({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    /*return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                RaisedButton(
                  onPressed: _callNumber,
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
              ],
            ),

          ],
        ),
      ),
    ); */
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            children: [
              MaterialButton(
                onPressed: () async {
                  final _call = 'tel:$_phoneNumber';
                  final _text = 'sms:$_phoneNumber';
                  if (await canLaunch(_call)){
                    await launch(_call);
                  }
                },
                color: Colors.white,
                child: Container(
                  width: 83,
                  height: 83,
                  padding: EdgeInsets.all(21),
                  decoration: BoxDecoration(
                    // color:
                    // const Color(0xFF0196FF).withOpacity(0.05),
                    border: Border.all(
                        color: const Color(0xFF0196FF),
                        width: 0,
                        style: BorderStyle.none),
                    borderRadius: BorderRadius.circular(20),
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
              SizedBox(width: 16,),
              MaterialButton(
                onPressed: () async {
                  final _call = 'tel:$_phoneNumber';
                  final _text = 'sms:$_phoneNumber';
                  if (await canLaunch(_call)){
                    await launch(_call);
                  }
                },
                color: Colors.white,
                child: Container(
                  width: 83,
                  height: 83,
                  padding: EdgeInsets.all(21),
                  decoration: BoxDecoration(
                    // color:
                    // const Color(0xFF0196FF).withOpacity(0.05),
                    border: Border.all(
                        color: const Color(0xFF0196FF),
                        width: 0,
                        style: BorderStyle.none),
                    borderRadius: BorderRadius.circular(20),
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
            ],
          ),
        ),
      ),
    );
  }
}
