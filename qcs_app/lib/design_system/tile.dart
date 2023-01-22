
import 'package:flutter/material.dart';
import 'package:qcs_app/models/crypto_model.dart';

class Tile extends StatelessWidget {
final Crypto crypto;

Tile({required this.crypto});
  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
  }