import 'package:e_commerce_flutter/utility/extensions.dart';

import 'provider/favourite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../widget/product_grid_view.dart';
import '../../utility/app_color.dart';



class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {
      // complete call loadFavouriteItems
      context.favouriteProvider.loadFavouriteItems();
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Favourites",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColor.darkOrange),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Consumer<FavouriteProvider>(
            builder: (context, favouriteProvider, child) {
              return ProductGridView(
                items: favouriteProvider.favouriteProduct,
              );
            },
          )
      ),
    );
  }
}
