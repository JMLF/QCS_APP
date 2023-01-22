

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:qcs_app/design_system/custom_app_bar.dart';
import 'package:qcs_app/design_system/custom_grid_view.dart';
import 'package:qcs_app/design_system/process_indicator.dart';
import 'package:qcs_app/models/crypto_model.dart';
import 'package:qcs_app/repository/trending_coins_repository.dart';


class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  ScreenHomeState createState() => ScreenHomeState();
}

class ScreenHomeState extends State<ScreenHome> {
  
  late Future<List<Crypto>?> futureCryptoData;

  // == API ==
  Future<List<Crypto>?> fetchCryptoData() async {
    List<Crypto>? data = await TrendingRepository.getTrendingRepo();
    return data;   
  }
  
  @override
  void initState() {
    super.initState();
  futureCryptoData = fetchCryptoData();
  }

  FutureOr onGoBack(dynamic value) {
  futureCryptoData = fetchCryptoData();
  }

  // === Build ===
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(title: "Les cryptos du moment"),
      ),
    
      body: FutureBuilder<List<Crypto>?>(
        future: futureCryptoData,
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            return CustomGridView(cryptos: snapshot.data);
          } else {
          return ProcessIndicator();
          }
        },
      ),
    );
  }
}
