class CartItem {
  final String img;
  final double price;
  int quantity;

  CartItem({required this.img, required this.price, this.quantity = 1});
}
