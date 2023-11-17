import 'package:flutter/material.dart';
import 'package:bangun_datar_kelas_b/controller/persegi-panjang.dart';
import 'package:get/get.dart';

class PersegiPanjangApp extends StatelessWidget {
   PersegiPanjangApp({super.key});
final PersegiPanjangController _persegiPanjangController = Get.put(PersegiPanjangController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Persegi Panjang'),),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: Column(
            children: [
              Image.asset(
                "assets/persegi-panjang.jpg",
                height: 50,
              ),
              Divider(color: Colors.white),
              Text(
                "Persegi Panjang",
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
                  "Persegi panjang adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yang masing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku.",
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
                        _persegiPanjangController.panjang = int.parse(value);
                      },
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Penjang",
                          hintText: "Masukkan Panjang",
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
                        _persegiPanjangController.lebar = int.parse(value);
                      },
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Lebar",
                          hintText: "Masukkan Lebar",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        _persegiPanjangController.hitung();
                      },
                      child: Text("Hitung Luas Persegi P",style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w900),),
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
                        _persegiPanjangController.keliling();
                      },
                      child: Text(
                        "Hitung Keliling Persegi P",
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
                            _persegiPanjangController.hasil.value,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: _persegiPanjangController.color.value),
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