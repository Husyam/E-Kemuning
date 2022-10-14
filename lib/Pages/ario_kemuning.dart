import 'package:flutter/material.dart';

class KelArio extends StatelessWidget {
  const KelArio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Kelurahan',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10.0),
                //   ),
                //   padding: EdgeInsets.only(left: 24.0,right: 24.0),
                //   child: Ink.image(
                //     image: AssetImage('assets/images/bg.png'),
                //     height: MediaQuery.of(context).size.height /7,
                //     // fit: BoxFit.contain,
                //     child: Align(
                //       alignment: Alignment.bottomLeft,
                //       child: Padding(
                //         padding: const EdgeInsets.only(top: 16.0,left: 16.0),
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               'Kel Ario Kemuning',
                //               textAlign: TextAlign.start,
                //               style: TextStyle(
                //                 fontSize: 24,
                //                 fontWeight: FontWeight.bold,
                //                 color: Colors.white,
                //               ),
                //             ),
                //             SizedBox(height: 8,),
                //             Text(
                //               'Kode Wilayah : 16.71.09.1002',
                //               textAlign: TextAlign.start,
                //               style: TextStyle(
                //                 fontSize: 12,
                //                 fontWeight: FontWeight.normal,
                //                 color: Colors.white,
                //               ),
                //             ),
                //
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // Container(
                //     //width: 200,
                //     padding: EdgeInsets.only(left: 16.0, right: 16.0),
                //     //color: Colors.red,
                //     child: ClipRRect(
                //       borderRadius: BorderRadius.circular(90.0),
                //       child: Ink.image(
                //         fit: BoxFit.cover,
                //         image: AssetImage('assets/images/bg.png'),
                //         height: MediaQuery.of(context).size.height / 7,
                //         child: InkWell(
                //           onTap: () {},
                //           child: Stack(
                //             children: <Widget>[
                //               Container(
                //                 decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(26.0),
                //                 ),
                //               ),
                //               Align(
                //                 alignment: Alignment.topLeft,
                //                 child: Padding(
                //                   padding: EdgeInsets.all(16),
                //                   child: Text('dog.name,'),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     )),
                Container(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                  height: MediaQuery.of(context).size.height / 7,
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/bg.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {},
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Kel Ario Kemuning',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Kode Wilayah : 16.71.09.1002',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                const Divider(
                  height: 16,
                  thickness: 10,
                  indent: 0,
                  endIndent: 0,
                  color: Color(0XFFF6F6F6),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 24.0,
                    left: 24.0,
                  ),
                  child: Text('Informasi Grafik'),
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            left: 24.0,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 16.0,
                            left: 16.0,
                          ),
                          width: 182,
                          height: 91,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Jumlah Penduduk',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0XFF333333),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '2,441',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0XFF42B1FF),
                                      ),
                                    ),
                                    const Text(
                                      '2,441',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0XFF42B1FF),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFFEEEEEE),
                                width: 0,
                                style: BorderStyle.solid),
                            //color: Colors.green,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 16.0,
                            left: 16.0,
                          ),
                          width: 182,
                          height: 91,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Jumlah Penduduk',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0XFF333333),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '2,441',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0XFF42B1FF),
                                      ),
                                    ),
                                    const Text(
                                      '2,441',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0XFF42B1FF),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFFEEEEEE),
                                width: 0,
                                style: BorderStyle.solid),
                            //color: Colors.green,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            left: 24.0,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 16.0,
                            left: 16.0,
                          ),
                          width: 182,
                          height: 91,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Jumlah Penduduk',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0XFF333333),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '2,441',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0XFF42B1FF),
                                      ),
                                    ),
                                    const Text(
                                      '2,441',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0XFF42B1FF),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFFEEEEEE),
                                width: 0,
                                style: BorderStyle.solid),
                            //color: Colors.green,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 16.0,
                            left: 16.0,
                          ),
                          width: 182,
                          height: 91,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Jumlah Penduduk',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0XFF333333),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '2,441',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0XFF42B1FF),
                                      ),
                                    ),
                                    const Text(
                                      '2,441',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0XFF42B1FF),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFFEEEEEE),
                                width: 0,
                                style: BorderStyle.solid),
                            //color: Colors.green,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        )
                      ],
                    ),
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
