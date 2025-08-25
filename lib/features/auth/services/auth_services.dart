import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:my_amazon_app/constants/error_handling.dart';
import 'package:my_amazon_app/constants/global_var.dart';
import 'package:my_amazon_app/constants/utils.dart';
import 'package:my_amazon_app/models/user.dart';
import 'package:http/http.dart' as http;

class AuthServices {
  void signUpUser({
    required BuildContext context,
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

      print(jsonEncode(user.toJson()));

      http.Response res = await http.post(
        Uri.parse("$uri/api/signup"),
        body: user.toJson(),
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8",
        },
      );
      httpErrorHandling(
        response: res,
        context: context,
        onSuccess: () {
          showSnackbar(
            "Account created! Login with the same credentials!",
            context,
          );
        },
      );
    } catch (e) {
      showSnackbar(e.toString(), context);
    }
  }
}
