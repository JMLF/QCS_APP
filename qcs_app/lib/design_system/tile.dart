import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
/*
final String name;
*/
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child : Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.network('https://assets.coingecko.com/coins/images/6111/small/taboo.PNG?1624500776%22'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('Bitcoin'),
                Text('BTC'),
              ],
            )
          ],
        ),
      )
      /*child: Row(
        children: <Widget>[
          Container(
            color: Colors.red,
            alignment: Alignment.topRight,
            padding: const EdgeInsets.only(top: 10),
            child: Image.network("https://assets.coingecko.com/coins/images/6111/small/taboo.PNG?1624500776%22",
                width: 50,height: 50),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("Mon texte", ),
          ),
        ],
    )*/
    );
  }
  }