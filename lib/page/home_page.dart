import 'package:bangun_datar_kelas_b/page/lingkaran-page.dart';
import 'package:bangun_datar_kelas_b/page/persegi-page.dart';
import 'package:bangun_datar_kelas_b/page/persegi-panjang-page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'NavBar',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Row(
            children: [
              Expanded(child: InkWell(onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiApp())); 
              }, child: CustomMenu(imageAsset: "assets/persegi.jpg",title: "PERSEGI"))),
              Expanded(child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPanjangApp())); 
                },
                child: CustomMenu(imageAsset: "assets/persegi-panjang.jpg",title: "PERSEGI PANJANG"))),
            ],
          ),
          Row(
            children: [
              Expanded(child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LingkaranApp())); 
                },
                child: CustomMenu(imageAsset: "assets/bulat.jpg",title: "BULAT"))),
              Expanded(child: CustomMenu(imageAsset: "assets/segitiga.jpg",title: "SEGITIGA")),
            ],
          ),
          Text(
            'Muhammad Deland Arjuna Putra',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.blueAccent,
              decorationStyle: TextDecorationStyle.solid,
              decoration: TextDecoration.underline,
              decorationThickness: 2,
            ),
          )
        ],
      )
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });

  final String imageAsset;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      color: Colors.amberAccent,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(imageAsset, height: 50,),
          Text(
            title,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.black,
              letterSpacing: 2,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
