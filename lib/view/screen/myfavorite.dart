import 'package:e_shop/controller/myfavorite_controller.dart';
import 'package:e_shop/core/class/handlingdata.dart';
import 'package:e_shop/core/constant/route.dart';
import 'package:e_shop/view/widget/customappbar.dart';
import 'package:e_shop/view/widget/myfavorite/customlistfavoriteitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavoriteController());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder<MyFavoriteController>(
            builder: ((controller) => ListView(children: [
                  // CustomAppBar(
                  //   titleappbar: "Find Product",
                  //   onPressedSearch: () {},
                  //   onPressedIconFavorite: () {
                  //     Get.toNamed(AppRoute.myfavroite);
                  //   },
                  //   onPressedMyFavorite: () {},
                  // ),
                  SizedBox(height: 20),
                  HandlingDataView(
                      statusRequest: controller.statusRequest,
                      widget: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.data.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 0.7),
                        itemBuilder: (context, index) {
                          return CustomListFavoriteItems(
                              itemsModel: controller.data[index]);
                        },
                      ))
                ]))),
      ),
    );
  }
}
