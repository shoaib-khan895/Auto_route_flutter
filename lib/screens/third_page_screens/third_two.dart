import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/third_page_cubit.dart';

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
              FloatingActionButton(
                key: const Key('counterView_decrement_floatingActionButton'),
                child: const Icon(Icons.exposure_minus_1),
                onPressed: () => context.read<ThirdPageCubit>().decrement(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
