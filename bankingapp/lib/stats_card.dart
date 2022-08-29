import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                color: Color(0xff4372F0),
                borderRadius: BorderRadius.circular(32.0),
              ),
              child: Column(children: [
                Text('Kartlar'),
              ]),
            ),
          ],
        ),
      ],
    );
  }
}
