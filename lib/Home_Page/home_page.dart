import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      //App bar section
      appBar: AppBar(
        title: Center(child: Text("Menu")),
      ),

      //App body section
      body: Column(
          children: [
          Center(
            child: Card(
              elevation: 20.0,
                child: Container(
                  width: 300.0,
                  height: 100.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                child: Row(
                  children: [
                    CircleAvatar(
                       backgroundColor: Colors.white,
                       radius: 30.0,
                      child: Image.asset("assets/images/profile.jpg"),
                    ),
                  ],
                )),
          ),
        ),
      ]),

      //App Nav bar section
    );
  }
}
