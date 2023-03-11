import 'package:e_shop/controller/favorite_controller.dart';
import 'package:e_shop/controller/items_controller.dart';
import 'package:e_shop/core/class/handlingdata.dart';
import 'package:e_shop/data/model/itemsmodel.dart';
import 'package:e_shop/view/widget/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/items/customlistitems.dart';
import '../widget/items/listcategoriesitems.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    FavoriteController controllerFav = Get.put(FavoriteController());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          // CustomAppBar(
          //   titleappbar: "Find Product",
          //   onPressedSearch: () {},
          //   onPressedIconFavorite: () {},
          //   onPressedMyFavorite: () {},
          // ),
          const SizedBox(height: 20),
          const ListCategoriesItems(),
          GetBuilder<ItemsControllerImp>(
              builder: (controller) => HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.data.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 0.7),
                      itemBuilder: (BuildContext context, index) {
                        controllerFav.isFavorite[controller.data[index]
                            ['items_id']] = controller.data[index]['favorite'];
                        return CustomListItems(
                            itemsModel:
                                ItemsModel.fromJson(controller.data[index]));
                      })))
        ]),
      ),
    );
  }
}
