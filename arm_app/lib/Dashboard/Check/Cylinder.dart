import 'package:flutter/material.dart';

class Cylinder extends StatelessWidget {
  const Cylinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(30, (i) => "Item $i");
    return Scaffold(
        appBar: AppBar(
          title: Text("Cylinder"),
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ));
  }
}
