import 'package:dd/dataitem/data.dart';
import 'package:flutter/material.dart';

class Flowlist extends StatelessWidget {
  final List<Documentation> _sse = [
    Documentation(
        icon: '',
        name1: 'Documentation varivation',
        time: DateTime.now().toString()),
    Documentation(
        icon: '',
        name1: 'NewBie on Boarding',
        time: DateTime.now().toString())
  ];
  Flowlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,
          childAspectRatio: 2/3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          ),
      itemBuilder: (ctx, i) => ListTile(
        title: Text(_sse[i].name1,style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        trailing: Container(
          decoration: BoxDecoration(
            color: Colors.lightGreenAccent,
            borderRadius: BorderRadius.circular(40)
          ),
          child: IconButton(
            onPressed: (){},
            icon: Icon(Icons.add),
          ),
        ),
        subtitle: Text(_sse[i].time,
        textAlign: TextAlign.left,
          maxLines: 2,
        ),
      ),
    );
  }
}
