import 'package:e_shop/core/class/crud.dart';
import 'package:e_shop/linkapi.dart';

class VerifyCodeForgetPasswordData {
  Crud crud;
  VerifyCodeForgetPasswordData(this.crud);
  postData(String email, String verfiycode) async {
    var response = await crud.postData(AppLink.verifyCodeForgetPassword,
        {"email": email, "verfiycode": verfiycode});
    return response.fold((l) => l, (r) => r);
  }
}
