import 'package:flutter/material.dart';
import 'package:my_first_flutterapp/data/wisata_data.dart';

import 'detailwisata_page.dart';
import 'model/wisata_model.dart';

class GridWisataPage extends StatelessWidget {
  const GridWisataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid Wisata"),
      ),
      body: GridView.builder(
          itemCount: WisataData.itemCount,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            WisataModel wisata = WisataData.getItemWisata(index)!;
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailWisataPage(
                              wisataDetail: wisata,
                            )));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 7,
                  color: Colors.red[900],
                  shadowColor: Colors.red[900],
                  child: Column(
                    children: [
                      Flexible(
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: Image.asset(
                            "assets/gambar/${wisata.gambar}",
                            width: 100,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          wisata.namaWisata ?? "-",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
