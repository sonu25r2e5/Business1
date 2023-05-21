import 'package:flutter/material.dart';


import '../dataitem/data.dart';



class Griddy extends StatelessWidget {



  final List<IconData> icons = [
    Icons.person, Icons.home, Icons.notifications
  ];
  final List<Data> _items = [
    Data(
        name: 'Add Task',
        imageUrl: 'images/lg.png',
        description: 'Creatives for bragging',

        // icon: 'Icons.add',
    ),
    Data(
        name: 'Review',
        imageUrl: 'images/ss.jpg',
        description: 'Verification process with them',
        // icon: 'Icons.add',
    ),
    Data(
      name: 'Gopal',
      imageUrl: 'images/ss.png',
      description: 'OverView is the way',

    ),
  ];

   Griddy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(5),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 1,
        mainAxisExtent: MediaQuery.of(context).size.height * 0.3,
          mainAxisSpacing: 20,
      ),
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx, i) => Container(
        padding: EdgeInsets.all(15),
        // height: MediaQuery.of(context).size.height * 0.2,

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(2),
          height: MediaQuery.of(context).size.height*0.04,
            width: MediaQuery.of(context).size.height*0.1,
            decoration: BoxDecoration(

        color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(12),
        ),
                child:Text(_items[i].name),

            ),
            SizedBox(
               height: 10,
            ),
            Text(_items[i].description),
          ],
        ),
      )
    );
  }
}
