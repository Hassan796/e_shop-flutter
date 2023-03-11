class AppLink {
  static const String server =
      "https://haceneecommerce.000webhostapp.com/ecommerce";

//================== Images ==========================================//

  static const String imageStatic =
      "https://haceneecommerce.000webhostapp.com/ecommerce/upload";
  static const String imagestCategories = "$imageStatic/categories";
  static const String imagestItems = "$imageStatic/items";
//================== Test ==========================================//
  static const String test = "$server/test.php";

// ================================= Auth ========================== //

  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifycodessignup = "$server/auth/verifycode.php";
  static const String resend = "$server/auth/resend.php";

// ================================= ForgetPassword ========================== //

  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword =
      "$server/forgetpassword/resetpassword.php";
  static const String verifyCodeForgetPassword =
      "$server/forgetpassword/verifycode.php";

// ================================= Home ========================== //
  static const String homepage = "$server/home.php";

// ================================= Items  ========================== //
  static const String items = "$server/items/items.php";
  static const String searchItems = "$server/items/search.php";

// ================================= Favorite  ========================== //
  static const String favoriteAdd = "$server/favorite/add.php";
  static const String favoriteRemove = "$server/favorite/remove.php";
  static const String favoriteView = "$server/favorite/view.php";
  static const String deletefromfavorite =
      "$server/favorite/deletefromfavorite.php";

// ================================= Cart  ========================== //
  static const String cartAdd = "$server/cart/add_cart.php";
  static const String cartDelete = "$server/cart/remove_cart.php";
  static const String cartView = "$server/cart/view.php";
  static const String cartGetCount = "$server/cart/getcountitems.php";
}
