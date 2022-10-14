import 'package:e_kemuning/Models/detailperizinan.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:e_kemuning/Widgets/card_detailperizinan.dart';
import 'package:flutter/material.dart';

class PerizinanDetail extends StatelessWidget {
  const PerizinanDetail({Key? key}) : super(key: key);

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
                  'Persyaratan',
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
              height: 90,
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
                      'Persyaratan Pelayanan	Mengisi formulir yang disediakan (formulir diambil di Dinas PMPTSP Kota Palembang), dan ditanda tangan diatas materai Rp. 6.000’- dengan dilampiri :',
                      style: whiteTextStyle.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 1,
              primaryText:
                  'Foto copy Kartu Tanda Penduduk (KTP) pemohon sebanyak 1 (satu) lembar',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 2,
              primaryText:
                  'Foto copy Sertifikat Tanah / Bukti Perolehan Tanah / Surat Keterangan Tanah;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 3,
              primaryText:
                  'Apabila yang ditempati bukan milik pemohon, harus disertai surat kerelaan (bermaterai Rp. 6.000’-) bahwa tanah dan bangunan diatasnya tidak dalam sengketa;',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 4,
              primaryText:
                  'Foto copy Ijin peruntukan lahan (bilamana diperlukan)',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 5,
              primaryText: 'Denah lokasi dimana bangunan akan didirikan',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 6,
              primaryText:
                  'Gambar struktur / konstruksi bangunan (denah detail tampak potongan, sanitasi, pagar dan teras)',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 7,
              primaryText:
                  'Foto bangunan(tampak depan, samping, belakang) bagi bangunan yang sudah berdiri / penertiban',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 8,
              primaryText:
                  'Persetujuan dari tetangga sekitar bangunan yang akan didirikan yang diketahui oleh pejabat setempat (Rt, Rw dan Lurah)',
            ),
          ),
          CardDetailPerizinan(
            DetailPerizinan(
              id: 9,
              primaryText:
                  'Foto copy bukti pelunasan Pajak Bumi dan Bangunan (PBB) tahun terakhir',
            ),
          ),
        ],
      ),
    );
  }
}
