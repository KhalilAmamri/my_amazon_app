import 'package:my_amazon_app/constants/global_var.dart';
import 'package:my_amazon_app/models/user.dart';
import 'package:http/http.dart' as http;

class AuthServices {
  void signUpUser({
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      User user = User(
        id: "",
        name: username,
        email: email,
        password: password,
        address: "",
        type: "",
        token: "",
      );
      http.Response res = await http.post(
        Uri.parse("$uri/api/signup"),
        body: user.toJson(),
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8",
        },
      );
    } catch (e) {}
  }
}
