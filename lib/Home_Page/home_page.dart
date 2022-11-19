// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
      backgroundColor: Colors.white,
      //App bar section
      appBar: AppBar(
        title: const Center(child: Text("Menu")),
      ),

      //App body section
      body: Column(children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Card(
              elevation: 2,
              child: SizedBox(
                  width: 400.0,
                  height: 80.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.white70,
                        child: ClipOval(
                          child: Image.asset("assets/images/profile.jpg"),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              "Sukanto Mukherjee",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                            ),
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                          Text(
                            "BRB Hospital",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 18.0),
                          )
                        ],
                      )
                    ],
                  )),
            ),
          ),
        ),
        const SizedBox(
          height: 70.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10.0,
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10.0,
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10.0,
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10.0,
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 40.0),
        Padding(
          padding: const EdgeInsets.only(left: 120.0, right: 120.0, top: 10.0),
          child: ElevatedButton(
              style: ButtonStyle(),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.power_settings_new_outlined),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Logout",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ],
              )),
        ),
      ]),

      //App Nav bar section
    );
  }
}
