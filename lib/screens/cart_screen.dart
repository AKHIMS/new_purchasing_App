import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/cart_controler.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Consumer<CartProvider>(
        builder: (context, cartProvider, _) {
          return ListView.builder(
            itemCount: cartProvider.items.length,
            itemBuilder: (context, index) {
              var item = cartProvider.items[index];
              return Card(
                child: ListTile(
                  leading: Image.asset(
                    'images/${item.img}.png', // Assuming your images are named like 'img.png'
                    width: 50, // Adjust the width as needed
                    height: 50, // Adjust the height as needed
                    fit: BoxFit.cover,
                  ),
                  title: Text(item.img),
                  subtitle: Text('Price: ${item.price}'),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      cartProvider.removeItem(index);
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
