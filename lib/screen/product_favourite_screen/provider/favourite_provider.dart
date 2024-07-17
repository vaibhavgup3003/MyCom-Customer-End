import '../../../core/data/data_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import '../../../models/product.dart';
import 'package:e_commerce_flutter/utility/constants.dart';


class FavouriteProvider extends ChangeNotifier {
  final DataProvider _dataProvider;
  final box = GetStorage();
  List<Product>  favouriteProduct = [];
  FavouriteProvider(this._dataProvider);

  // complete updateToFavouriteList
  updateToFavouriteList(String productId){
    List<dynamic> favouriteList = box.read(FAVOURITE_PRODUCT_BOX) ?? [];
    if(favouriteList.contains(productId)){
      favouriteList.remove(productId);
    }
    else{
      favouriteList.add(productId);
    }
    checkIsItemFavourite(productId);
    box.write(FAVOURITE_PRODUCT_BOX, favouriteList);
    loadFavouriteItems();
    notifyListeners();
  }

  // complete checkIsItemFavourite
  checkIsItemFavourite(String productId){
    List<dynamic> favouriteList = box.read(FAVOURITE_PRODUCT_BOX)??[];
    bool isExist = favouriteList.contains(productId);
    return isExist;
    // notifyListeners();
  }


  // complete loadFavouriteItems
  void loadFavouriteItems(){
    List<dynamic> favouriteListIds = box.read(FAVOURITE_PRODUCT_BOX) ?? [];
    favouriteProduct = _dataProvider.products.where((product) {
      return favouriteListIds.contains(product.sId);
    }).toList();
    notifyListeners();
  }

  // complete clearFavouriteList
  void clearFavouriteList(){
    box.remove(FAVOURITE_PRODUCT_BOX);
  }

}
