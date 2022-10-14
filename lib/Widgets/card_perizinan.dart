import 'package:e_kemuning/Models/perizinan.dart';
import 'package:e_kemuning/Pages/perizinan_detail.dart';
import 'package:e_kemuning/Themes/theme.dart';
import 'package:flutter/material.dart';

class CardPerizinan extends StatelessWidget {
  final Perizinan perizinan;

  const CardPerizinan(
    this.perizinan, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 2,
        right: 2,
      ),
      child: InkWell(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5), // if you need this
          ),
          elevation: 0,
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PerizinanDetail(),
                ),
              );
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          perizinan.primaryText,
                          style: blackTextStyle.copyWith(fontSize: 14),
                        ),
                        Text(
                          perizinan.secondText,
                          style: greyTextStyle.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Icon(
                      Icons.chevron_right,
                      color: primaryColor,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
