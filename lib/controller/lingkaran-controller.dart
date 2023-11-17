import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranController extends GetxController {
  int jari = 0;
  final hasil = "".obs;
  final color = Colors.amber.obs;

  void hitung () {
    double pie = 3.14;
    if (jari % 7 == 0) {
       pie = 22 / 7;
    }
    double hitung = pie * jari * jari;
    hasil.value = "Hasil perhitungan luas dari jari jari $jari = $hitung";
    color.value = Colors.blue;
  }

  void keliling () {
     double pie = 3.14;
    if (jari % 7 == 0) {
       pie = 22 / 7;
    }
    double hitung = 2 * pie * jari;
    hasil.value = "Hasil perhitungan Keliling dari jari jari $jari = $hitung";
    color.value = Colors.red;
  }
}