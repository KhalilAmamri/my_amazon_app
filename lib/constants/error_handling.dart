import 'dart:convert';

import 'package:flutter/material.dart' as http;
import 'package:http/http.dart' as http;
import 'package:my_amazon_app/constants/utils.dart';

void httpErrorHandling({
  required http.Response response,
  required http.VoidCallback onSuccess,
  required http.BuildContext context,
})
{
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
      showSnackbar(context as String, jsonDecode(response.body)['msg']);
      break;
    case 500:
      showSnackbar(context as String, jsonDecode(response.body)['msg']);
      break;
    default:
    showSnackbar(context as String, response.body);
  }

showSnackbar(context as String, jsonDecode(response.body)['msg']);
}