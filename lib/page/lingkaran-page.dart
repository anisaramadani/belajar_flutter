import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bangun_datar_kelas_b/controller/lingkaran-controller.dart';

class LingkaranApp extends StatelessWidget {
  LingkaranApp({super.key});

  final LingkaranController _lingkaranController = Get.put(LingkaranController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lingkaran'),),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: Column(
            children: [
              Image.asset(
                "assets/bulat.jpg",
                height: 50,
              ),
              Divider(color: Colors.white),
              Text(
                "lingkaran",
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
                  "Lingkaran adalah bentuk yang terdiri dari semua titik dalam bidang yang berjarak tertentu dari titik tertentu, pusat; ekuivalennya adalah kurva yang dilacak oleh titik yang bergerak dalam bidang sehingga jaraknya dari titik tertentu adalah konstan. ",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 12, height: 1.5),
                ),
              ),
              Divider(color: Colors.white, height: 20,),
              Container(
                width: double.infinity,
                child: TextFormField(
                  onChanged: (value) {
                    _lingkaranController.jari = int.parse(value);
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Jari",
                      hintText: "Masukkan Jari",
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
                        _lingkaranController.hitung();
                      },
                      child: Text("Hitung Luas Lingkaran",style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w900),),
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
                        _lingkaranController.keliling();
                      },
                      child: Text(
                        "Hitung Keliling Lingkaran",
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
                            _lingkaranController.hasil.value,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: _lingkaranController.color.value),
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