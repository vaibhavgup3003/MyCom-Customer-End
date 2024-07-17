import '../screen/login_screen/provider/user_provider.dart';
import '../screen/product_cart_screen/provider/cart_provider.dart';
import '../screen/profile_screen/provider/profile_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../core/data/data_provider.dart';
import '../screen/product_by_category_screen/provider/product_by_category_provider.dart';
import '../screen/product_details_screen/provider/product_detail_provider.dart';
import '../screen/product_favourite_screen/provider/favourite_provider.dart';

extension Providers on BuildContext {
  DataProvider get dataProvider => Provider.of<DataProvider>(this, listen: false);
  ProductByCategoryProvider get proByCProvider => Provider.of<ProductByCategoryProvider>(this, listen: false);
  ProductDetailProvider get proDetailProvider => Provider.of<ProductDetailProvider>(this, listen: false);
  CartProvider get cartProvider => Provider.of<CartProvider>(this, listen: false);
  FavouriteProvider get favouriteProvider => Provider.of<FavouriteProvider>(this, listen: false);
  UserProvider get userProvider => Provider.of<UserProvider>(this, listen: false);
  ProfileProvider get profileProvider => Provider.of<ProfileProvider>(this, listen: false);
}






