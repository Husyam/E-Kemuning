import 'package:e_kemuning/Models/nonperizinan.dart';
import 'package:e_kemuning/Models/perizinan.dart';
import 'package:e_kemuning/Models/profildivisi.dart';
import 'package:e_kemuning/Pages/perizinan_detail.dart';
import 'package:e_kemuning/StackHome.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:e_kemuning/Widgets/card_divisi.dart';
import 'package:e_kemuning/Widgets/card_nonperizinan.dart';
import 'package:e_kemuning/Widgets/card_perizinan.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            backgroundColor: whiteColor,
            foregroundColor: blackColor,
            elevation: 0.2,
            title: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Profil',
                      style: blackTextStyle.copyWith(
                          fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/bg-primary.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Tim Kecamatan',
                              style: whiteTextStyle.copyWith(fontSize: 24),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '54 Anggota ',
                                  style: whiteTextStyle.copyWith(fontSize: 12),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  '5 Divisi ',
                                  style: whiteTextStyle.copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Column(
                          children: [
                            Text(
                              'Jl. Jend. Basuki Rachmat No.75, Pipa Jaya, Kec. Kemuning, Kota Palembang, Sumatera Selatan 30128. Lihat Maps',
                              style: whiteTextStyle.copyWith(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  CardDivisi(ProfilDivisi(id: 1, primaryText: 'hhh', secondText: 'hhh',),),
                  // Card(
                  //   elevation: 0.5,
                  //   clipBehavior: Clip.antiAlias,
                  //   child: Column(
                  //     children: [
                  //       ListTile(
                  //           onTap: (){},
                  //           //leading: Icon(Icons.arrow_drop_down_circle),
                  //           title: const Text('Devisi Kesejahteraan Rakyat'),
                  //           subtitle: Text(
                  //             '10 orang',
                  //             style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  //           ),
                  //           trailing: const Icon(
                  //             Icons.arrow_forward_ios_outlined,
                  //             size: 24.0,
                  //             color: Colors.blue,
                  //           )
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Card(
                  //   elevation: 0.5,
                  //   clipBehavior: Clip.antiAlias,
                  //   child: Column(
                  //     children: [
                  //       ListTile(
                  //         //leading: Icon(Icons.arrow_drop_down_circle),
                  //           title: const Text('Divisi Hukum dan Perizinan'),
                  //           subtitle: Text(
                  //             '20 orang',
                  //             style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  //           ),
                  //           trailing: const Icon(
                  //             Icons.arrow_forward_ios_outlined,
                  //             size: 24.0,
                  //             color: Colors.blue,
                  //           )
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Card(
                  //   elevation: 0.5,
                  //   clipBehavior: Clip.antiAlias,
                  //   child: Column(
                  //     children: [
                  //       ListTile(
                  //         //leading: Icon(Icons.arrow_drop_down_circle),
                  //           title: const Text('Divisi Perekonomian'),
                  //           subtitle: Text(
                  //             '12 orang',
                  //             style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  //           ),
                  //           trailing: const Icon(
                  //             Icons.arrow_forward_ios_outlined,
                  //             size: 24.0,
                  //             color: Colors.blue,
                  //           )
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Card(
                  //   elevation: 0.5,
                  //   clipBehavior: Clip.antiAlias,
                  //   child: Column(
                  //     children: [
                  //       ListTile(
                  //         //leading: Icon(Icons.arrow_drop_down_circle),
                  //           title: const Text('Divisi Administrasi dan Keuangan'),
                  //           subtitle: Text(
                  //             '2 orang',
                  //             style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  //           ),
                  //           trailing: const Icon(
                  //             Icons.arrow_forward_ios_outlined,
                  //             size: 24.0,
                  //             color: Colors.blue,
                  //           )
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
