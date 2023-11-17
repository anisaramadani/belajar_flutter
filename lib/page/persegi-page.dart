import 'package:bangun_datar_kelas_b/controller/persegi-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiApp extends StatelessWidget {
  PersegiApp({super.key});

  final PersegiController _persegiController = Get.put(PersegiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Persegi'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: Column(
            children: [
              Image.asset(
                "assets/persegi.jpg",
                height: 50,
              ),
              Divider(color: Colors.white),
              Text(
                "Persegi",
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
                  "Persegi adalah salah satu bentuk geometris yang memiliki sisi-sisi yang empat dengan panjang yang sama dan memiliki keempat sudutnya sudut siku-siku. Bentuk ini memiliki sifat khusus yang membuatnya menarik dan sering digunakan dalam berbagai konteks matematika dan kehidupan sehari-hari.",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 12, height: 1.5),
                ),
              ),
              Divider(color: Colors.white, height: 20,),
              Container(
                width: double.infinity,
                child: TextFormField(
                  onChanged: (value) {
                    _persegiController.sisi = int.parse(value);
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Sisi",
                      hintText: "Masukkan Sisi",
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
              Divider(
                color: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        _persegiController.hitung();
                      },
                      child: Text("Hitung Luas Persegi",style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w900),),
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
                        _persegiController.keliling();
                      },
                      child: Text(
                        "Hitung Keliling Persegi",
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
                            _persegiController.hasil.value,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: _persegiController.color.value),
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
