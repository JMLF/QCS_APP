import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
/*
final String name;
*/
  @override
  Widget build(BuildContext context) {
    /*return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            child: const Center(
              child: Text(
                "BITCOIN",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Helvetica",
                  fontSize: 16,
                ),
              ),
            ),
        ),
        ],
      ),
    );*/
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 120,
            /*decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              *//*child(
                image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/128px-Bitcoin.svg.png'),
              ),*//*
            ),*/
            child: Image.network("https://assets.coingecko.com/coins/images/6111/small/taboo.PNG?1624500776%22",
            width: 50,height: 50),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Test",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
  }