// ignore_for_file: prefer_const_constructors, avoid_print

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
  final passwordFocusNode=FocusNode();
  RxString animation ="idle".obs;

  String user = "";
  String password = "";

  void passwordFocusCheck(){
    passwordFocusNode.addListener(() {
       if(passwordFocusNode.hasFocus){
         animation.value="test";
             update();
       }else{
         animation.value="idle";
         update();
       }
    });
  }
  @override
  void onInit() {
    passwordFocusCheck();
    // TODO: implement onInit
    super.onInit();
  }


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
    update();
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
          animation.value="success";
          update();
          Get.snackbar("Login Message", users.msg!,
              snackPosition: SnackPosition.BOTTOM);
          Get.to(HomePage(),duration: Duration(seconds: 2));
          isLoading.value = false;
          update();

        } else {
          animation.value="fail";
          update();
          print(users.error!);
          Get.snackbar(
            "Login Message",
            users.msg!,
            snackPosition: SnackPosition.BOTTOM,

          );
          isLoading.value = false;
          update();


        }
      }
    }
  }
}
