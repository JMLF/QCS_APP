import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  bool logo;
  CustomAppBar({required this.title, required this.logo});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
         logo == true ? Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset(
              "assets/images/IconApp.png",
              fit: BoxFit.contain,
            ),
          ) : SizedBox.shrink(),  
          Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
        ],
      ),
      backgroundColor: Colors.black,
      centerTitle: true,
      toolbarHeight: 70,
      elevation: 0,
      titleTextStyle: const TextTheme(
        headline6: TextStyle(
          color: Colors.black,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ).headline6,
    );
  }
}
