import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaController extends GetxController {
  int alas = 0;
  int tinggi = 0;
  int sisia = 0;
  int sisib = 0;
  int sisic = 0;
  final hasil = "".obs;
  final color = Colors.amber.obs;

  void hitung () {
    double hitung = alas * tinggi * (1 / 2);
    hasil.value = "Hasil perhitungan luas dari $alas x $tinggi = $hitung";
    color.value = Colors.blue;
  }

  void keliling () {
    int hitung = sisia + sisib + sisic;
    hasil.value = "Hasil perhitungan Keliling dari $sisia + $sisib + $sisic = $hitung";
    color.value = Colors.red;
  }
}