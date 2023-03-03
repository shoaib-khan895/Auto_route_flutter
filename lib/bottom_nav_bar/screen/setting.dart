import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: Text('Settings',style: TextStyle(fontSize: 55,fontWeight: FontWeight.w800,color:Colors.deepOrange )))
    );}
}