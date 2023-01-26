
import 'package:flutter/material.dart';
import 'package:qcs_app/Screen/ScreenDetail/Screen_detail_arg.dart';
import 'package:qcs_app/Screen/ScreenDetail/screen_detail.dart';
import 'package:qcs_app/models/crypto_detailed.dart';
import 'package:qcs_app/models/crypto_model.dart';
import 'package:qcs_app/repository/detailed_coins_repository.dart';

class Tile extends StatelessWidget {
final Crypto crypto;

Tile({required this.crypto});
  @override
  Widget build(BuildContext context) {
    Future<CryptoDetail?> detaiCrypto =  DetailRepository.getDetailRepo(crypto.id);
    return InkWell(
      onTap: () async => Navigator.of(context).pushNamed('/detail', arguments: ScreenDetailArgument(crypto: await detaiCrypto ?? CryptoDetail(description: "api null", sentiment_votes_up_percentage: "api null", sentiment_votes_down_percentage: "api null", public_interest_score: "api null", coingecko_rank: "api null", coingecko_score: "api null", community_score: "api null", developer_score: "api null", liquidity_score: "api null", market_cap_rank: "api null", name: 'api null', thumb: 'api null'))),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
    
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.network(crypto.thumb, width: 50,height: 50),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      Text(crypto.name,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold)),
                      Text(crypto.symbol,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey)),
                    ],
                  )
                ],
              ),
    
            ),
            SizedBox(height: 30),
            Center(
    
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              Text((crypto.price).toStringAsFixed(5),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
              Text(" BTC ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
            ]
            )
            ),
    
          ],
    
        )
      ),
    );
  }
  }