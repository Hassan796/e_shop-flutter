import 'package:e_shop/controller/setting_controller.dart';
import 'package:e_shop/core/constant/color.dart';
import 'package:e_shop/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.put(SettingsController());
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: Get.width / 2,
                  color: AppColor.primaryColor,
                ),
                Positioned(
                  top: Get.width / 2.5,
                  left: Get.width / 2.6,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      // color: AppColor.primaryColor,
                    ),
                    child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey[600],
                        backgroundImage:
                            const AssetImage(AppImageAsset.avatarImage)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: const Text("Notification"),
                      trailing: Switch(
                        value: true,
                        onChanged: (value) {},
                      ),
                    ),
                    ListTile(
                      title: const Text("Contact us "),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.phone_forwarded_outlined)),
                    ),
                    ListTile(
                      title: const Text("About us"),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.info_outline)),
                    ),
                    ListTile(
                      title: const Text("Log out"),
                      trailing: IconButton(
                          onPressed: () {
                            controller.logout();
                          },
                          icon: const Icon(Icons.logout_sharp)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
