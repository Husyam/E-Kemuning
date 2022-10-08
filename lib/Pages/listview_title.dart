import 'package:flutter/material.dart';
import 'package:e_kemuning/list_kelurahan.dart';


class DatalListTitle extends ListTile {
  DatalListTitle(DataKelurahan data)
  : super(
    title: Text(data.name),
    subtitle: Text(data.jmlh),
    trailing: Icon(
      Icons.arrow_forward_ios_outlined,
      size: 24.0,
      color: Colors.deepPurple,
    )
  );
}