import 'package:e_shop/core/constant/color.dart';
import 'package:e_shop/view/widget/cart/custombuttoncart.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarCart extends StatelessWidget {
  final String price;
  final String priceshipping;
  final String totalprice;
  const BottomNavigationBarCart(
      {Key? key,
      required this.price,
      required this.priceshipping,
      required this.totalprice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: const Text(
                "Price",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "$price \$",
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: "sans",
                    fontWeight: FontWeight.bold,
                    color: AppColor.secondColor),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: const Text(
                "Shipping",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "$priceshipping \$",
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: "sans",
                    fontWeight: FontWeight.bold,
                    color: AppColor.secondColor),
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: const Divider(
            height: 20,
            color: AppColor.black,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: const Text(
                "Total Price",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "$totalprice \$",
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: "sans",
                    fontWeight: FontWeight.bold,
                    color: AppColor.secondColor),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        CustomButtonCart(
          onPressed: () {},
          textbutton: 'Plcae your Order',
        )
      ]),
    );
  }
}
