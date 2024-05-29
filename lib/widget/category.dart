import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget {
  final String imagefat;
  final String title;
  const Category({super.key, required this.imagefat, required this.title});

  @override
  Widget build(BuildContext context) {
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: 70,
          height: 70,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Image.asset(
                  imagefat,
                  width: 40,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: GoogleFonts.montserrat(fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}