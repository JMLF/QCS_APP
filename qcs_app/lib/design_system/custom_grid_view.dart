

import 'package:flutter/material.dart';
import 'package:qcs_app/design_system/tile.dart';
import 'package:qcs_app/models/crypto_model.dart';

class CustomGridView extends StatelessWidget {
  final List<Crypto>? cryptos;
  CustomGridView({required this.cryptos});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      padding: const EdgeInsets.all(20),
      children: List.generate(cryptos!.length, (index) {
        return Tile(crypto : cryptos![index]);
      }),
    );
  }

}

