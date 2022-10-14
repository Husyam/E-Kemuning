import 'package:e_kemuning/Models/detailperizinan.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:flutter/material.dart';

class CardDetailPerizinan extends StatelessWidget {
  final DetailPerizinan detailperizinan;

  const CardDetailPerizinan(
    this.detailperizinan, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: greenColor,
                    size: 17,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Text(
                      detailperizinan.primaryText,
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
