import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: Text('Home',style: TextStyle(fontSize: 55,fontWeight: FontWeight.w800,color:Colors.deepOrange ),)));
  }
}
