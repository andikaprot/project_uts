import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class productCard extends StatelessWidget {
  productCard({
    required this.nameProduct,
    required this.imageProduct,
    required this.priceProduct,
    required this.ontap,
  });

  String imageProduct;
  String nameProduct;
  String priceProduct;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: ontap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          // color: Colors.amber,
          width: 195.46,
          height: 245,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff202020),
                      image: DecorationImage(
                        image: AssetImage(imageProduct),
                      )),
                ),
              ),
              SizedBox(height: 8),
              Text(
                nameProduct,
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Color(0xff3E3E3E),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                priceProduct,
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Color(0xff11655D),
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
