import 'package:e_shop/core/class/statusrequest.dart';
import 'package:e_shop/core/function/handlingdatacontroller.dart';
import 'package:e_shop/core/services/services.dart';
import 'package:e_shop/data/datasource/remote/cart_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/model/cartmodel.dart';

class CartController extends GetxController {
  CartData cartData = CartData(Get.find());

  late StatusRequest statusRequest;

  List<CartModel> data = [];

  double priceorder = 0.0;

  int totalcountitems = 0;

  MyServices myServices = Get.find();

  add(String itemsid) async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await cartData.addCart(
        myServices.sharedPreferences.getString("id")!, itemsid);
    ("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "اشعار",
            messageText: const Text("تم اضافة المنتج إلى السلة  "));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  delete(String itemsid) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await cartData.deleteCart(
        myServices.sharedPreferences.getString("id")!, itemsid);
    ("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "اشعار", messageText: const Text("تم حذف المنتج من السلة "));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }

      // End
    }
    update();
  }

  resetVarCart() {
    priceorder = 0.0;
    totalcountitems = 0;
  }

  refreshPage() {
    resetVarCart();
    view();
    data.clear();
  }

  view() async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await cartData.view(myServices.sharedPreferences.getString("id")!);
    ("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        if (response['datacart']['status'] == 'success') {
          List dataresponse = response['datacart']['data'];
          Map dataresponsecountprice = response['countprice'];
          data.clear();
          data.addAll(dataresponse.map((e) => CartModel.fromJson(e)));
          totalcountitems = int.parse(dataresponsecountprice['totalcount']);
          priceorder = double.parse(dataresponsecountprice['totalprice']);
        }
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  @override
  void onInit() {
    view();
    super.onInit();
  }
}
