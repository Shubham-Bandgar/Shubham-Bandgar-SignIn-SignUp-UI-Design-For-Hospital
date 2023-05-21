import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,

      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.red,
          width: 10,
          style: BorderStyle.solid
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Image(image: AssetImage("assets/images/searchhosp.png")),

    );



  }
}
