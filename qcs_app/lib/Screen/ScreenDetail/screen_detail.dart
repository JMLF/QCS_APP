import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qcs_app/Screen/ScreenDetail/Screen_detail_arg.dart';
import 'package:qcs_app/design_system/custom_app_bar.dart';
import 'package:qcs_app/design_system/process_indicator.dart';
import 'package:qcs_app/models/crypto_detailed.dart';
import 'package:qcs_app/repository/detailed_coins_repository.dart';

class ScreenDetail extends StatefulWidget {
  const ScreenDetail({super.key});

  static const routeName = '/detail';

  @override
  State<ScreenDetail> createState() => _ScreenDetailState();
}

class _ScreenDetailState extends State<ScreenDetail> {
 
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ScreenDetailArgument;


    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title: args.crypto.name.toString(),
          logo: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 25,
            ),
            Text(
              args.crypto.name.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'NexaHeavy',
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 150,
              width: 150,
              child: Image.network(args.crypto.thumb, width: 50, height: 50),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 60,
                right: 55,
                top: 5,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CoinGeko rank",
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'NexaBook',
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Score CoinGeko",
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'NexaBook',
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Marketcap rank",
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'NexaBook',
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Score de la communauté",
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'NexaBook',
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Score developpeur",
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'NexaBook',
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Score de liquidité",
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'NexaBook',
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            args.crypto.coingecko_rank.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'NexaBook',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            args.crypto.coingecko_score.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'NexaBook',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            args.crypto.market_cap_rank.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'NexaBook',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            args.crypto.community_score.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'NexaBook',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                          args.crypto.developer_score.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'NexaBook',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            args.crypto.liquidity_score.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'NexaBook',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 500,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(height: 5),
                              Text(
                                "Description",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'NexaBook',
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(height: 5),
                              Text(
                               args.crypto.description,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'NexaBook',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )),
                  ]),
            ),
            const SizedBox(
              height: 35,
            ),
            const SizedBox(
              height: 250,
            ),
          ],
        ),
      ),
    );
  }
}
