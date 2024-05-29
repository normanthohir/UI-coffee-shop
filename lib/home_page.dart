import 'package:coffee_shop/detail_page.dart';
import 'package:coffee_shop/widget/category.dart';
import 'package:coffee_shop/widget/coffe_shop.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "Tersimpan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        selectedItemColor: Colors.brown,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 140,
                    width: double.infinity,
                    color: Colors.brown,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/me1.png"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 2),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Halo Selamat Datatang !",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.notifications_active,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: TextField(
                            cursorHeight: 20,
                            autofocus: false,
                            decoration: InputDecoration(
                              hintText: "Cari tokoh faforitmu",
                              hintStyle: TextStyle(fontSize: 15),
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Category(
                        imagefat: "assets/tubruk.png",
                        title: "Tubruk",
                      ),
                      Category(
                        imagefat: "assets/mesin.png",
                        title: "Espresso",
                      ),
                      Category(
                        imagefat: "assets/cup.png",
                        title: "Latte",
                      ),
                      Category(
                        imagefat: "assets/biji.png",
                        title: "Biji",
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Tempat Favorit",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          DetailPage(), // Gantilah dengan nama halaman beranda Anda
                    ));
                  },
                  child: CoffeeShop(
                    imageFath: "assets/coffee_1.jpg",
                    nameShop: "Kopi Kenangan",
                    rating: "4.7",
                    jamBuka: "9.00 - 22.00",
                  ),
                ),
              ),
              CoffeeShop(
                imageFath: "assets/coffee_2.jpg",
                nameShop: "Coffe Starbac",
                rating: "4.9",
                jamBuka: "11.00 - 1.00",
              ),
              CoffeeShop(
                imageFath: "assets/coffee_3.jpg",
                nameShop: "GG Coffee",
                rating: "4.4",
                jamBuka: "10.00 - 23.00",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
