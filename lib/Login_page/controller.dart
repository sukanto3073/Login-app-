import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:login_page/Home_Page/home_page.dart';
import 'package:login_page/Login_page/login_model.dart';
import 'package:login_page/Urls/urls.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String user = "";
  String password = "";

  String? validationUser(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter Username";
    } else {
      return null;
    }
  }

  String? validationPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter Password";
    } else if (value.length < 5) {
      return "Password too short";
    } else {
      return null;
    }
  }

  void getDataCalling() async {
    isLoading.value = true;
    Map<String, String> data = {
      'username': usernameController.text.toString(),
      'password': passwordController.text.toString()
    };
    String fullUrl = Urls.baseUrl + Urls.login;
    Map<String, String> setHeaders = {'Accept': 'application/json'};
    var response =
        await http.post(Uri.parse(fullUrl), body: data, headers: setHeaders);
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        User users = User.fromJson(jsonDecode(response.body));
        if (users.error == false) {
          Get.snackbar("Login Message", users.msg!,
              snackPosition: SnackPosition.BOTTOM);
          Get.to(HomePage());
        } else {
          print(users.error!);
          Get.snackbar("Login Message", users.msg!,
              snackPosition: SnackPosition.BOTTOM,
              colorText: Color.fromARGB(0, 141, 31, 236));
        }
      }
    }
  }
}
