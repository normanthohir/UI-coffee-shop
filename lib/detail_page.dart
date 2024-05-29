import 'package:coffee_shop/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // tumpukan foto dan nama tokoh
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: height * 0.4,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/coffee_1.jpg"),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop(); 
                        // atau
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      child: Container(
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Container(
                      child: Icon(
                        Icons.assistant_direction,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(19),
                      child: Text(
                        "Kopi Kenangan",
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    height: height * .09,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
              // unutuk renting dan jam buka  ////////////////////
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "4.6 (22 Review)",
                          style: GoogleFonts.montserrat(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    // / Row Kedua /////////////////////////
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "10.00 - 22.00 WIT",
                          style: GoogleFonts.montserrat(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // ///// card Promo //////////      ////////////////
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.amber[100],
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ada Promo Untuk Kamu",
                              style: GoogleFonts.montserrat(
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              "Dapatkan Diskon 100 ribu",
                              style: GoogleFonts.montserrat(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Tukar"),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.amber),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // alamat /// /////////////////////
              TitleDetail(
                title: "Alamat",
                detail: "Dusun batumearah, JL. Kebun Cengkeh, Kanawa",
              ),

              // Titile  ////////////////////////////////////////////
              TitleDetail(
                title: "Descripsi",
                detail:
                    "Cafe Aromatik adalah oase kopi yang menawarkan pengalaman tak terlupakan dengan beragam kopi berkualitas tinggi dari seluruh dunia, disertai dengan suasana hangat dan interior yang elegan. Dalam kesejukan aroma kopi segar, Anda dapat menikmati berbagai hidangan ringan lezat dan minuman yang sehat. Selain itu, Cafe Aromatik adalah tempat yang sempurna untuk bersantai, bekerja, atau berkumpul dengan teman, dan staf kami yang ramah selalu siap menyambut Anda dengan senyuman.",
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  "ulasan",
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Witget Ulasan /////////////     //////////////////
              Comen(),
              Comen(),
            ],
          ),
        ),
      ),
    );
  }
}

class Comen extends StatelessWidget {
  const Comen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/me1.png",
                      )),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Norman Thohir",
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Dalam kesimpulannya, harmonisasi hak dan kewajiban asasi manusia dalam perspektif Pancasila merupakan fondasi bagi pembangunan masyarakat yang adil, beradab, dan berkesinambungan. ",
            style: GoogleFonts.montserrat(
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}

class TitleDetail extends StatelessWidget {
  final String title;
  final String detail;
  const TitleDetail({super.key, required this.title, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            detail,
            style: GoogleFonts.montserrat(fontSize: 13),
          )
        ],
      ),
    );
  }
}
