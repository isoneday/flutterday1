import 'package:flutter/material.dart';
import 'package:my_first_flutterapp/beranda_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//deklarasi variable
  final _formKey = GlobalKey<FormState>();

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
        child: Form(
          key: _formKey,
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
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                  validator: validasiEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "input email anda",
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.red[900],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                  validator: validasiPassword,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "input password anda",
                      prefixIcon: Icon(Icons.lock, color: Colors.red[900])),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          // side: const BorderSide(
                          //     color: Colors.blue, width: 8)
                        ))),
                        onPressed: () {
                          cekValidasi();
                        },
                        child: Text("OK"))),
              )
            ],
          )),
        ),
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

//validasi untuk memeriksa email inputan valid atau tidak
  String? validasiEmail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value!.trim()))
      return 'Enter Valid Email';
    else
      return null;
  }

//validasi untuk memeriksa panjang karakter dari inputkan password
  String? validasiPassword(String? value) {
    if (value!.length < 6) {
      return ' password harus lebih besar dari 5 karakter';
    } else {
      return null;
    }
  }

  void cekValidasi() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BerandaPage()));
    }
  }
}
