import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red[900],
        elevation: 30,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              print("klik search");
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              print("klik settings");
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.home,
            color: Colors.white,
          ),
          onPressed: () {
            print("klik home");
          },
        ),
        shadowColor: Colors.red,
        title: const Text(
          "Halaman Home",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Nama: ",
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
              ),
              Text(
                "Iswandi",
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Kota: ",
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
              ),
              Text(
                "Padang",
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
