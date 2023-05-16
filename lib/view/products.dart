import 'package:flutter/material.dart';

import '../controller/data/remote/api.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getData(),
          builder: (context, AsyncSnapshot Snapshot) {
            if (Snapshot.hasData) {
              return ListView.builder(
                  itemCount: Snapshot.data.length,
                  itemBuilder: (context, i) {
                    return Text(Snapshot.data[i]);
                  });
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}
