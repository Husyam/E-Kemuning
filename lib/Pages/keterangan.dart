import 'package:e_kemuning/Models/keterangan.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:e_kemuning/Widgets/card_keterangan.dart';
import 'package:flutter/material.dart';

class KeteranganPage extends StatelessWidget {
  const KeteranganPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
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
                  'Keterangan',
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
                  children: [
                    Text(
                      'Berdasarkan Peraturan Kota Palembang No. 54 Tahun 2015 Tentang Pelimpahan Sebagian Kewenangan Pemerintah dari Walikote Kepada Camat',
                      style: whiteTextStyle.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          CardKeterangan(
            Keterangan(
              id: 1,
              primaryText: 'SURAT KETERANGAN AHLI WARIS',
            ),
          ),
          CardKeterangan(
            Keterangan(
              id: 1,
              primaryText: 'SURAT KETERANGAN DOMISILI',
            ),
          ),
          CardKeterangan(
            Keterangan(
              id: 1,
              primaryText: 'SURAT KETERANGAN BERSIH DIRI (SKBD)',
            ),
          ),
          CardKeterangan(
            Keterangan(
              id: 1,
              primaryText: 'PENERBITAN SURAT KETERANGAN',
            ),
          ),
        ],
      ),
    );
  }
}
