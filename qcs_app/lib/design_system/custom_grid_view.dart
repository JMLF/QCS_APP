import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  final List<String> items;
  final int crossAxisCount;

  CustomGridView({required this.items, required this.crossAxisCount});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: const Text("Salut"),
        );
      },
    );
  }
}

