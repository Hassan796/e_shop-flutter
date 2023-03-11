import 'package:e_shop/core/constant/route.dart';
import 'package:e_shop/core/middleware/mymiddleware.dart';
import 'package:e_shop/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:e_shop/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:e_shop/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:e_shop/view/screen/auth/login.dart';
import 'package:e_shop/view/screen/auth/signup.dart';
import 'package:e_shop/view/screen/auth/verifycodesignup.dart';
import 'package:e_shop/view/screen/cart.dart';
import 'package:e_shop/view/screen/myfavorite.dart';
import 'package:e_shop/view/screen/homescreen.dart';
import 'package:e_shop/view/screen/items.dart';
import 'package:e_shop/view/screen/language.dart';
import 'package:e_shop/view/screen/onboarding.dart';
import 'package:e_shop/view/screen/productdetails.dart';
import 'package:get/get.dart';
import 'view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'view/screen/auth/success_signup.dart';
import 'view/screen/settings.dart';

List<GetPage<dynamic>>? routes = [
  //
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.cart, page: () => const Cart()),
//  Auth
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  //
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),
  GetPage(name: AppRoute.items, page: () => const Items()),
  GetPage(name: AppRoute.productdetails, page: () => const ProductDetails()),
  GetPage(name: AppRoute.myfavroite, page: () => const MyFavorite()),
  GetPage(name: AppRoute.settings, page: () => const Settings()),
];
