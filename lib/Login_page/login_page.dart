import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar section
      appBar: AppBar(
        title: const Center(child: Text("Login_page")),
      ),

      //App body section
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset("assets/app_logo.png"),
                ),
              ),
            ),
             SizedBox(height: 40.0,),
               const Padding(
                 padding: EdgeInsets.only(left: 30.0,right: 30.0),
                 child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    labelText: 'Username',

                  ),
                ),
               ),

            const Padding(
              padding: EdgeInsets.only(left: 30.0,right: 30.0,top: 20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  labelText: 'Password',
                ),
              ),
            ),




          ],
        ),
      ),


      //App Nav_bar section
    );
  }
}
