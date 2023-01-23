import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qcs_app/Screen/ScreenDetail/Screen_detail_arg.dart';
import 'package:qcs_app/design_system/custom_app_bar.dart';
import 'package:qcs_app/models/crypto_detailed.dart';
import 'package:qcs_app/repository/detailed_coins_repository.dart';


class ScreenDetail extends StatefulWidget {
  const ScreenDetail({super.key});

  static const routeName = '/detail';

  @override
  State<ScreenDetail> createState() => _ScreenDetailState();
}

class _ScreenDetailState extends State<ScreenDetail> {

  late Future<CryptoDetail> futureCryptoData;

  // == API ==
  // Future<CryptoDetail> fetchCryptoData() async {
  //   CryptoDetail data = await DetailRepository.getDetailRepo();
  //   return data;
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     final args = ModalRoute.of(context)!.settings.arguments
         as ScreenDetailArgument;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(title: args.crypto.name, logo: false,),
      ),
      body: Container(),
      // FutureBuilder<List<Crypto>?>(
      //   future: futureCryptoData,
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData && snapshot.data != null) {
      //       return Container();
      //     } else {
      //       return ProcessIndicator();
      //     }
      //   },
      // ),
    );
  }
}
