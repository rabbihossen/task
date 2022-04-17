import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 25,
                            child: Image.asset(
                              "assets/icons/search.png",
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Color(0xffF4F5F7),
                                border: InputBorder.none,
                                hintText: 'Search for items'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              
              ],
            ),
          ),
        ],
      ),
    );
  }
}
