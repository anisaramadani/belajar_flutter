import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation/animated_bottom_navigation.dart';

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
              Expanded(child: CustomMenu(imageAsset: "assets/persegi.jpg",title: "PERSEGI")),
              Expanded(child: CustomMenu(imageAsset: "assets/persegi-panjang.jpg",title: "PERSEGI PANJANG")),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/bulat.jpg",title: "BULAT")),
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
      ),
      bottomNavigationBar: AnimatedBottomNavigation(
        context: context,
        items: [
          TabItem(
            icon: const Icon(Icons.hive_sharp),
            haveChildren: true,
            activeColor: Colors.white,
            inActiveColor: Colors.white60,
            children: [
              TabChildrenItem(
                icon: const Icon(Icons.call),
                title: 'Call',
                onTap: () {},
              ),
              TabChildrenItem(
                  icon: const Icon(Icons.photo_rounded),
                  onTap: () {},
                  title: 'Gallery'
              ),
              TabChildrenItem(
                icon: const Icon(Icons.add_road),
                onTap: () {},
              ),
            ],
          ),
          TabItem(
            icon: const Icon(Icons.library_add),
            haveChildren: true,
            activeColor: Colors.white,
            inActiveColor: Colors.white60,
            children: [
              TabChildrenItem(
                icon: const Icon(Icons.add_a_photo),
                onTap: () {},
              ),
              TabChildrenItem(
                icon: const Icon(Icons.get_app),
                onTap: () {},
              ),
              TabChildrenItem(
                icon: const Icon(Icons.settings),
                onTap: () {},
              ),
            ],
          ),
          TabItem(
            icon: const Icon(Icons.bookmark),
            activeColor: Colors.white,
            inActiveColor: Colors.white60,
          ),
          TabItem(
            icon: const Icon(Icons.camera_alt_rounded),
            haveChildren: true,
            activeColor: Colors.white,
            inActiveColor: Colors.white60,
            children: [
              TabChildrenItem(
                icon: const Icon(Icons.timer_10_select_rounded),
                onTap: () {},
              ),
              TabChildrenItem(
                icon: const Icon(Icons.phone_iphone_rounded),
                onTap: () {},
              ),
              TabChildrenItem(
                icon: const Icon(Icons.alarm),
                onTap: () {},
              ),
              TabChildrenItem(
                icon: const Icon(Icons.color_lens),
                onTap: () {},
              ),
            ],
          ),
        ],
        onChanged: (index) {
          // Handle button tap
        },
      ),
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
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      color: Colors.amberAccent,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          Image.asset(imageAsset, height: 50,),
          Text(
            title,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.white70,
              letterSpacing: 2,
              fontSize: 12,
              decorationStyle: TextDecorationStyle.solid,
              decoration: TextDecoration.underline,
              decorationThickness: 2,
            ),
          ),
        ],
      ),
    );
  }
}
