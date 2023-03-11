import 'package:e_shop/core/class/handlingdata.dart';
import 'package:e_shop/core/constant/route.dart';
import 'package:e_shop/view/widget/customappbar.dart';
import 'package:e_shop/view/widget/home/customcardhome.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/home_controller.dart';
import '../widget/home/customtitlehome.dart';
import '../widget/home/listcategorieshome.dart';
import '../widget/home/listitemshome.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
      body: GetBuilder<HomeControllerImp>(
        builder: (controller) => HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: [
                CustomAppBar(
                  mycontroller: controller.search!,
                  onChanged: (val) {
                    controller.checkSearch(val);
                  },
                  onPressedIconFavorite: () {
                    Get.toNamed(AppRoute.myfavroite);
                  },
                  onPressedSearch: () {
                    controller.onSearchItems();
                  },
                  onPressedMyFavorite: () {},
                  titleappbar: "Search Your Product",
                ),
                !controller.isSearch
                    ? Column(
                        children: const [
                          CustomCardHome(
                            title: "Summer Offers",
                            body: "Discount 30%",
                          ),
                          ListCategoriesHome(),
                          CustomTitleHome(title: "Products For You"),
                          ListItemsHome(),
                          CustomTitleHome(title: "Offers For You"),
                          ListItemsHome(),
                        ],
                      )
                    : Container(
                        child: Text("Search"),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
