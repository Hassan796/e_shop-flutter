import 'package:e_shop/core/class/crud.dart';
import 'package:e_shop/linkapi.dart';

class MyFavoriteData {
  Crud crud;
  MyFavoriteData(this.crud);
  getData(String id) async {
    var response = await crud.postData(AppLink.favoriteView, {"id": id});
    return response.fold((l) => l, (r) => r);
  }

  deleteData(String id) async {
    var response = await crud.postData(AppLink.deletefromfavorite, {"id": id});
    return response.fold((l) => l, (r) => r);
  }
}
