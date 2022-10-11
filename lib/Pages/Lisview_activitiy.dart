import 'package:e_kemuning/list_kelurahan.dart';
import 'package:flutter/material.dart';

import 'listview_title.dart';
import 'package:e_kemuning/./list_kelurahan.dart';

class LisViewActivity extends StatelessWidget {
  LisViewActivity({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Container(
        child: _buildList(),
      ),
    );
  }


  Widget _buildList() {
    return ListView.builder(
        itemCount: ListData.length,
        itemBuilder: (BuildContext context, int index) {
          DataKelurahan data = ListData[index];
          return Card(
            elevation: 0.5,
            child: Container(
              child: DatalListTitle(data),
            ),
          );
        });
  }
}
