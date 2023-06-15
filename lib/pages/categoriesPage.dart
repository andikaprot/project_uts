import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesapp/widgets/productCard.dart';

class categoriesPage extends StatelessWidget {
  categoriesPage({super.key});

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
            SizedBox(height: 36),
            Container(
              padding: EdgeInsets.fromLTRB(12, 14, 12, 14),
              height: 55,
              decoration: BoxDecoration(
                color: Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Image.asset("images/filter.png"),
                      SizedBox(width: 5),
                      Text(
                        "Filter",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Text(
                    "Man",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1F9189)),
                  ),
                  Text(
                    "Woman",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Kids",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Shoes",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GridView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 250,
              ),
              children: [
                productCard(
                  nameProduct: "Real Men's Shoes",
                  imageProduct: "images/shoes.png",
                  priceProduct: "IDR 120.000",
                  ontap: () {},
                ),
                productCard(
                  nameProduct: "Lovely Red Shoes",
                  imageProduct: "images/shoes1.png",
                  priceProduct: "IDR 120.000",
                  ontap: () {},
                ),
                productCard(
                  nameProduct: "Real Men's Shoes",
                  imageProduct: "images/shoes2.png",
                  priceProduct: "IDR 120.000",
                  ontap: () {},
                ),
                productCard(
                  nameProduct: "Real Men's Shoes",
                  imageProduct: "images/shoes.png",
                  priceProduct: "IDR 120.000",
                  ontap: () {},
                ),
                productCard(
                  nameProduct: "Lovely Red Shoes",
                  imageProduct: "images/shoes1.png",
                  priceProduct: "IDR 120.000",
                  ontap: () {},
                ),
                productCard(
                  nameProduct: "Real Men's Shoes",
                  imageProduct: "images/shoes2.png",
                  priceProduct: "IDR 120.000",
                  ontap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
