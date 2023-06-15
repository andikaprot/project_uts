import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesapp/widgets/productCard.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset("images/menuicon.png"),
                splashRadius: 18,
              ),
              Image.asset("images/woman.png")
            ]),
            SizedBox(height: 22),
            Text(
              "Happy shopping",
              style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff19837B)),
            ),
            SizedBox(height: 11),
            Text(
              "Discount 50% OFF",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff696969)),
            ),
            SizedBox(height: 30),
            Stack(
              children: [
                Container(
                  height: 343.5,
                  decoration: BoxDecoration(
                      color: Color(0xff202020),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("images/shoes.png"),
                      )),
                ),
                Positioned(
                  bottom: 10,
                  left: 163,
                  child: Image.asset("images/slide.png"),
                )
              ],
            ),
            SizedBox(height: 26),
            ElevatedButton(
              onPressed: () {},
              child: Text("Order now",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                  )),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color(0xff1C756C)),
                fixedSize: MaterialStatePropertyAll(Size(277, 56)),
                shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100))),
              ),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Text(
                  "Best",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Text(
                  "Collection",
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1F9189)),
                ),
              ],
            ),
            SizedBox(height: 19),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  productCard(
                    nameProduct: "Real Men's Shoes",
                    imageProduct: "images/shoes.png",
                    priceProduct: "IDR 120.000",
                    ontap: () {},
                  ),
                  SizedBox(width: 10),
                  productCard(
                    nameProduct: "Lovely Red Shoes",
                    imageProduct: "images/shoes1.png",
                    priceProduct: "IDR 120.000",
                    ontap: () {},
                  ),
                  SizedBox(width: 10),
                  productCard(
                    nameProduct: "Real Men's Shoes",
                    imageProduct: "images/shoes2.png",
                    priceProduct: "IDR 120.000",
                    ontap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
