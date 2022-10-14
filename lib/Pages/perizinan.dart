import 'package:e_kemuning/Models/nonperizinan.dart';
import 'package:e_kemuning/Models/perizinan.dart';
import 'package:e_kemuning/Pages/perizinan_detail.dart';
import 'package:e_kemuning/StackHome.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:e_kemuning/Widgets/card_nonperizinan.dart';
import 'package:e_kemuning/Widgets/card_perizinan.dart';
import 'package:flutter/material.dart';

class PerizinanPage extends StatelessWidget {
  const PerizinanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            foregroundColor: whiteColor,
            elevation: 0,
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Perijinan',
                  icon: Icon(Icons.check_circle),
                ),
                Tab(
                  text: 'Non Perijinan',
                  icon: Icon(Icons.approval_rounded),
                ),
                // Tab(
                //   text: 'Permohonan',
                //   icon: Icon(Icons.handshake),
                // ),
              ],
            ),
            title: Text(
              'Surat Perizinan',
              style: whiteTextStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          body: TabBarView(
            children: [
              Scaffold(
                backgroundColor: lightColor,
                body: ListView(
                  children: [
                    CardPerizinan(
                      Perizinan(
                        id: 1,
                        primaryText: 'SURAT IZIN USAHA',
                        secondText: 'Perdagangan',
                      ),
                    ),
                    CardPerizinan(
                      Perizinan(
                        id: 2,
                        primaryText: 'SURAT IZIN USAHA',
                        secondText: 'Kepariwisataan',
                      ),
                    ),
                    CardPerizinan(
                      Perizinan(
                        id: 3,
                        primaryText: 'SURAT IZIN PEMAKAMAN',
                        secondText: '(TPU)',
                      ),
                    ),
                    CardPerizinan(
                      Perizinan(
                        id: 4,
                        primaryText: 'SURAT KEPUTUSAN IZIN OPERASIONAL',
                        secondText: 'Pijat Modern',
                      ),
                    ),
                    CardPerizinan(
                      Perizinan(
                        id: 5,
                        primaryText: 'SURAT KEPUTUSAN IZIN OPERASIONAL',
                        secondText: 'Pijat Tradisional',
                      ),
                    ),
                    CardPerizinan(
                      Perizinan(
                        id: 6,
                        primaryText: 'SURAT IZIN PEMASANGAN',
                        secondText: 'Reklame',
                      ),
                    ),
                    CardPerizinan(
                      Perizinan(
                        id: 7,
                        primaryText: 'SURAT KEPUTUSAN IZIN OPERASIONAL',
                        secondText: 'Salon/Pangkas Rambut',
                      ),
                    ),
                  ],
                ),
              ),
              Scaffold(
                backgroundColor: lightColor,
                body: ListView(
                  children: [
                    CardNonPerizinan(
                      NonPerizinan(
                        id: 1,
                        primaryText: 'SURAT IZIN MENDIRIKAN BANGUNAN (IMB)',
                      ),
                    ),
                    CardNonPerizinan(
                      NonPerizinan(
                        id: 2,
                        primaryText: 'SURAT IZIN DOMISILI USAHA',
                      ),
                    ),
                    CardNonPerizinan(
                      NonPerizinan(
                        id: 3,
                        primaryText: 'REKOMENDASI PENDAFTARAN TNI/POLRI',
                      ),
                    ),
                    CardNonPerizinan(
                      NonPerizinan(
                        id: 4,
                        primaryText: 'PERMOHONAN LEGALISIR DOKUMEN',
                      ),
                    ),
                    CardNonPerizinan(
                      NonPerizinan(
                        id: 5,
                        primaryText: 'SURAT DISPENSASI NIKAH',
                      ),
                    ),
                    CardNonPerizinan(
                      NonPerizinan(
                        id: 6,
                        primaryText: 'SURAT IZIN KERAMAIAN',
                      ),
                    ),
                    CardNonPerizinan(
                      NonPerizinan(
                        id: 7,
                        primaryText: 'PENCATATAN SURAT TANAH',
                      ),
                    ),
                    CardNonPerizinan(
                      NonPerizinan(
                        id: 8,
                        primaryText: 'SURAT IZIN PENELITIAN',
                      ),
                    ),
                    CardNonPerizinan(
                      NonPerizinan(
                        id: 9,
                        primaryText: 'PENCATATAN SURAT TANAH',
                      ),
                    ),
                  ],
                ),
              ),
              // Scaffold(
              //   backgroundColor: lightColor,
              //   body: ListView(
              //     children: const [
              //       CardPerizinan(),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
