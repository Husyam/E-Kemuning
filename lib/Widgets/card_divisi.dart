import 'package:e_kemuning/Models/profildivisi.dart';
import 'package:flutter/material.dart';

class CardDivisi extends StatelessWidget {
  final ProfilDivisi profilDivisi;

  const CardDivisi(this.profilDivisi,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Card(
        elevation: 0.5,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ListTile(
              //leading: Icon(Icons.arrow_drop_down_circle),
                title: Text('ProfilDivisi.primaryText'),
                subtitle: Text(
                 "ProfilDivisi.secondText",
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 24.0,
                  color: Colors.blue,
                )
            ),
          ],
        ),
      ),
    );
  }
}
