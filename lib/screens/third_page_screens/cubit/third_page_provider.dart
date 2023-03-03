import 'package:auto_route_flutter/screens/home_page_screens/third_page.dart';
import 'package:auto_route_flutter/screens/third_page_screens/cubit/third_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThirdPageProvider extends StatelessWidget {
  const ThirdPageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => ThirdPageCubit(),
        child: ThirdPage(dsg: 'Dev',name: 'shoaib khan'),
      ),
    );
  }
}