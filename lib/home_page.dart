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
          "INATECHNO",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            // Image.asset(
            //   "assets/gambar/logoina.png",
            //   color: Colors.red,
            //   width: 300,
            //   height: 300,
            // ),
            Image.network(
              "https://www.gamelab.id/uploads/modules/NEWS/671/maxresdefault.jpg?1618217239336",
              height: 200,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Flutter Basic",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: "batmfo__"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: "input email anda"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(hintText: "input password anda"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: "input email anda"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(hintText: "input password anda"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        // side: const BorderSide(
                        //     color: Colors.blue, width: 8)
                      ))),
                      onPressed: () {},
                      child: Text("OK"))),
            )
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          print("klik FAB");
        },
      ),
    );
  }
}
