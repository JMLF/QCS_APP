
import 'package:flutter/material.dart';

class ProcessIndicator extends StatelessWidget {
  const ProcessIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 150,
        height: 100,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Waiting",
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
            Container(height: 20),
            const SizedBox(
              height: 4,
              child: LinearProgressIndicator(
                backgroundColor: Colors.black12,
              ),
            ),
          ],
        ),
      ),
    );
  }
  }


 