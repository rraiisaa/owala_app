import 'package:flutter/material.dart';
import 'package:tumblrr_app/models/products_model.dart';

class FavButton extends StatelessWidget {
  final ProductsModel product;

  const FavButton({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    bool isFavorite;

    return IconButton(
      onPressed: () {
        if (isFavorite = true) {
          // todo dari provider untuk memutuskan dia warna apa, dan itemnya masuk ke mana
        } else {
          // todo masukan kode untuk logika penambahan item di halaman wishlist
        }
      },
      icon: Icon(
        Icons.favorite,
        color: Colors.red,
      ),
    );
  }
}