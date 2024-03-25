import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/cart_controler.dart';
import 'package:flutter_application_1/model/cart_model.dart';
import 'package:flutter_application_1/screens/cart_screen.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatefulWidget {
  final String img;

  const ProductScreen(this.img);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late String selectedImage;
  late String selectedPrice;

  @override
  void initState() {
    selectedImage = widget.img;
    selectedPrice = "\$300.54";

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, cartProvider, child) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height / 1.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("images/${widget.img}.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Icon(Icons.arrow_back_ios_new, size: 22),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Icon(Icons.favorite, size: 22, color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.img,
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "\$300.54",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.red.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          "for women",
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                        RatingBar.builder(
                          unratedColor: Color(0xFFAEB5B5),
                          itemSize: 28,
                          initialRating: 3.5,
                          maxRating: 5,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4),
                          onRatingUpdate: (rating) {},
                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.yellow),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "You don’t need to be lucky to look good thanks to this Chinese New Year Graphic T-Shirt Dress",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(18),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 186, 123, 123),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(Icons.shop),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // Store selected image and price
                                cartProvider.addItem(CartItem(img: widget.img, price: '\$300.54'),); 
                                Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),));
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 70),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFF6262),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(
                                  "Buy Now",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
