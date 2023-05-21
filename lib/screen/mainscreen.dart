import 'package:dd/dataitem/listview.dart';
import 'package:flutter/material.dart';
import '../dataitem/FLowlist.dart';

class ScreenView extends StatelessWidget {
  const ScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settting'),
        ],
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Stack(children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.075,
            right: MediaQuery.of(context).size.width * 0.05,
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('images/ss.jpg'),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.09,
            left: 10,
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Welcome Back',
                      ),
                      TextSpan(
                        text: '\nPreety Sinha',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            left: 20,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Container(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(23)),
                  //     suffixText: 'Try to find',
                  //     suffixStyle: TextStyle(
                  //       color: Colors.black,
                  //     ),
                  //   ),
                  // ),
                  Text(
                    'Try to find......',
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.3,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Task-based\n explanation process',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 1.2,
                  color: Theme.of(context).primaryColor,
                  // color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width * 1,
                          child: Griddy(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.65,
            left: 20,
            child: Container(
              height: MediaQuery.of(context).size.width * 0.4,
              width: MediaQuery.of(context).size.width * 0.9,
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'FLow List',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      color: Theme.of(context).primaryColor,
                      child: Flowlist(),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
