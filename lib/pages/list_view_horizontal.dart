import 'package:flutter/material.dart';
import 'package:trilhaapp/shared/widgets/app_images.dart';

class ListViewHorizontal extends StatefulWidget {
  const ListViewHorizontal({super.key});

  @override
  State<ListViewHorizontal> createState() => _ListViewHorizontalState();
}

class _ListViewHorizontalState extends State<ListViewHorizontal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 2,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Card(
                elevation: 8,
                child: Image.asset(
                  AppImages.pais1,
                ),
              ),
              Card(
                elevation: 8,
                child: Image.asset(
                  AppImages.pais2,
                ),
              ),
              Card(
                elevation: 8,
                child: Image.asset(
                  AppImages.pais3,
                ),
              ),
            ],
          ),
        ),
        Expanded(flex: 4, child: Container())
      ],
    ));
  }
}
