import 'package:e_shop/controller/cart_controller.dart';
import 'package:e_shop/core/class/handlingdata.dart';
import 'package:e_shop/view/widget/cart/bottom_navigation_bar_cart.dart';
import 'package:e_shop/view/widget/cart/custom_card_cart.dart';
import 'package:e_shop/view/widget/cart/topmycart.dart';
import 'package:e_shop/view/widget/cart/toptitleitemscart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.put(CartController());
    return Scaffold(
        bottomNavigationBar: GetBuilder<CartController>(
          builder: (controller) => BottomNavigationBarCart(
            price: "${cartController.priceorder}",
            priceshipping: '9.99',
            totalprice: '599.99',
          ),
        ),
        body: GetBuilder<CartController>(
            builder: ((controller) => HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: ListView(
                    children: [
                      const TopMyCart(
                        headline: 'My Cart',
                      ),
                      const SizedBox(height: 10),
                      TopTitleItemsCart(
                          title:
                              "You have ${cartController.totalcountitems} items in your Cart"),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            ...List.generate(
                              cartController.data.length,
                              (index) => CustomCardCart(
                                onAdd: () async {
                                  await cartController
                                      .add(cartController.data[index].itemsId!);
                                  cartController.refreshPage();
                                },
                                onRemove: () async {
                                  await cartController.delete(
                                      cartController.data[index].itemsId!);
                                  cartController.refreshPage();
                                },
                                imagename:
                                    "${cartController.data[index].itemsImage}",
                                productcount:
                                    "${cartController.data[index].countitems}",
                                productprice:
                                    "${cartController.data[index].itemsPrice}",
                                productname:
                                    "${cartController.data[index].itemsName}",
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ))));
  }
}
