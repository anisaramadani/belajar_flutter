import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bangun_datar_kelas_b/controller/segitaga.controller.dart';

class SegitagaApp extends StatelessWidget {
    SegitagaApp({super.key});
    final SegitigaController _segitigaController = Get.put(SegitigaController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Segitiga'),),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: ListView(
            children: [
              Image.asset(
                "assets/segitiga.jpg",
                height: 50,
              ),
              Divider(color: Colors.white),
              Text(
                "segitiga",
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  letterSpacing: 2,
                  fontSize: 16,
                ),
              ),
              Divider(color: Colors.white),
              Container(
                width: double.infinity,
                child: Text(
                  "Sebuah segitiga adalah poligon dengan tiga ujung dan tiga simpul. Ini adalah salah satu bentuk dasar dalam geometri. Segitiga dengan simpul A, B, dan C dilambangkan. Dalam geometri Euclidean, setiap tiga titik, ketika non-collinear, menentukan segitiga unik dan sekaligus, sebuah bidang unik.",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 12, height: 1.5),
                ),
              ),
              Divider(color: Colors.white, height: 20,),
              Row(
                children: [Expanded(
                  child: Container(
                  width: double.infinity,
                    child: TextFormField(
                      onChanged: (value) {
                        _segitigaController.alas = int.parse(value);
                      },
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Alas",
                          hintText: "Masukkan Alas",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.blue),
                              borderRadius: BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                  width: double.infinity,
                    child: TextFormField(
                      onChanged: (value) {
                        _segitigaController.tinggi = int.parse(value);
                      },
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Tinggi",
                          hintText: "Masukkan Tinggi",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.blue),
                              borderRadius: BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),
                ),
            ]),
              Divider(
                color: Colors.white,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                  child: Container(
                  width: double.infinity,
                    child: TextFormField(
                      onChanged: (value) {
                        _segitigaController.sisia = int.parse(value);
                      },
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Sisi A",
                          hintText: "Masukkan Sisi A",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.blue),
                              borderRadius: BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                  width: double.infinity,
                    child: TextFormField(
                      onChanged: (value) {
                        _segitigaController.sisib = int.parse(value);
                      },
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Sisi B",
                          hintText: "Masukkan Sisi B",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.blue),
                              borderRadius: BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),
                ),
                    ],
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  Row(
                    children: [
                       Expanded(
                  child: Container(
                  width: double.infinity,
                    child: TextFormField(
                      onChanged: (value) {
                        _segitigaController.sisic = int.parse(value);
                      },
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Sisi C",
                          hintText: "Masukkan Sisi C",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.blue),
                              borderRadius: BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),
                ),
                    ],
                  )
                ]
              ),
              Divider(
                color: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        _segitigaController.hitung();
                      },
                      child: Text("Hitung Luas Segitiga",style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w900),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white70
                      ),
                      ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        _segitigaController.keliling();
                      },
                      child: Text(
                        "Hitung Keliling Segitiga",
                        style: TextStyle(color: Colors.green, fontWeight: FontWeight.w900),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white70
                      ),
                      ),
                ),
              ]),
              Divider(
                color: Colors.white,
                height: 50,
              ),
              Obx(() => Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Hasil :"),
                      Text(
                            _segitigaController.hasil.value,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: _segitigaController.color.value),
                          ),
                          Text("======================="),
                          Text("Thanks You"),
                    ],
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}