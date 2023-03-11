import 'package:e_shop/controller/test_controller.dart';
import 'package:e_shop/core/class/statusrequest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
      ),
      body: GetBuilder<TestController>(builder: (controller) {
        if (controller.statusRequest == StatusRequest.loading) {
          return const Center(child: Text("Loading..."));
        } else if (controller.statusRequest == StatusRequest.serverfailure) {
          return const Center(child: Text("Server Failure"));
        } else if (controller.statusRequest == StatusRequest.offlinefailure) {
          return const Center(child: Text("Offline Failure"));
        } else {
          return ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (context, index) {
              return Text("${controller.data}");
            },
          );
        }
      }),
    );
  }
}
