import 'package:flutter/material.dart';

class ThirdTwo extends StatelessWidget {
  const ThirdTwo({
    Key? key,
    this.info,
  }) : super(key: key);

  final String? info;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("ThirdTwo"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                info!,
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
