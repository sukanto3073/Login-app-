// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page/Login_page/controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  //final LoginController  controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: ((controller) {
        return Scaffold(
            //App bar section
            appBar: AppBar(
              title: const Center(child: Text("Login_page")),
            ),

            //App body section
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //app logo
                    Container(
                      margin: EdgeInsets.only(top: 50.0),
                      height: 100.0,
                      width: 100.0,
                      child: Image.asset("assets/images/ReceptionLogo.png"),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    //Login hello user
                    Container(
                      child: const Text(
                        'Hello Receptionist',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                            fontFamily: "cursive"),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    //Login form

                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Form(
                        key: controller.loginFormKey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              controller: controller.usernameController,
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  labelText: "User Name",
                                  labelStyle: TextStyle(
                                      backgroundColor: Colors.grey[100])),
                              validator: controller.validationUser,
                              onChanged: (value) {
                                controller.user = value;
                              },
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            TextFormField(
                              controller: controller.passwordController,
                              obscureText: true,
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  labelText: "password",
                                  labelStyle: TextStyle(
                                      backgroundColor: Colors.grey[100])),
                              validator: controller.validationPassword,
                              onChanged: (value) {
                                controller.password = value;
                              },
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                              ),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                ),


                                onPressed: () {
                                  if (controller.loginFormKey.currentState!
                                      .validate()) {
                                    controller.getDataCalling();
                                  }
                                },
                                child: controller.isLoading.value
                                    ? const CircularProgressIndicator(
                                        color:
                                            Color.fromARGB(255, 255, 200, 20),
                                        strokeWidth: 3.0,
                                      )
                                    : const Text(
                                        "Login",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.white),
                                      ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
            //App Nav_bar section
            );
      }),
    );
  }
}
