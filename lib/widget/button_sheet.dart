// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screens/cart_screen.dart';

// class CustomBottomSheet extends StatelessWidget {
//   final String img;
//   final String price;
//   final List<String> sizes = ['S', 'M', 'L', 'XL'];
//   final Function(String, String) onCheckoutClicked; // Callback function

//   CustomBottomSheet({required this.img, required this.price, required this.onCheckoutClicked});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(30),
//           topRight: Radius.circular(30),
//         ),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           SizedBox(height: 10),
//           Container(
//             height: 4,
//             width: 50,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//             ),
//           ),
//           SizedBox(height: 20),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Image
//               Container(
//                 width: 80,
//                 height: 80,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(img), // Use the provided image path
//                     fit: BoxFit.cover,
//                   ),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//               SizedBox(width: 20),
//               // Price name
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Product Name", // You can add a product name here
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     price, // Use the provided price
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           SizedBox(height: 20),
//           InkWell(
//             onTap: () {
//               // Call the callback function and pass image and price
//               onCheckoutClicked(img, price);
//               // Navigate to cart screen
//               Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
//             },
//             child: Container(
//               padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
//               decoration: BoxDecoration(
//                 color: Colors.redAccent,
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               child: Text(
//                 "checkout",
//                 style: TextStyle(
//                   fontSize: 17,
//                   fontWeight: FontWeight.w300,
//                   letterSpacing: 1,
//                   color: Colors.white10.withOpacity(0.8),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
