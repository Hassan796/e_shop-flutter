import 'package:e_shop/view/screen/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/screen/home.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  List<Widget> listPage = [
    const HomePage(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Center(child: Text("Notification"))],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Center(child: Text("Profile"))],
    ),
    // Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: const [Center(child: Text("settings"))],
    // ),
    const Settings(),
  ];

  List bottomappbar = [
    {
      "title": "Home",
      "icon": Icons.home,
    },
    {
      "title": "Notify",
      "icon": Icons.notifications_active_outlined,
    },
    {
      "title": "Profile",
      "icon": Icons.person_pin,
    },
    {
      "title": "settings",
      "icon": Icons.settings_outlined,
    }
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}
