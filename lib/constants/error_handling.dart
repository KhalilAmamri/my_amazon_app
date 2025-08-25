import 'dart:convert';

import 'package:flutter/material.dart' as http;
import 'package:http/http.dart' as http;
import 'package:my_amazon_app/constants/utils.dart';

void httpErrorHandling({
  required http.Response response,
  required http.VoidCallback onSuccess,
  required http.BuildContext context,
}) {
  try {
    switch (response.statusCode) {
      case 200:
        onSuccess();
        break;
      case 400:
        showSnackbar(jsonDecode(response.body)['msg'], context);
        break;
      case 500:
        showSnackbar(jsonDecode(response.body)['error'], context);
        break;
      default:
        showSnackbar(response.body, context);
    }
  } catch (e) {
    showSnackbar("Unexpected error: ${response.body}", context);
  }
}
