import 'package:flutter/material.dart';

// Anasayfada bulunan kartlar 3
class BankCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String content;
  final Color backColor;

  const BankCard(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.content,
      required this.backColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.only(
            top: 24, left: MediaQuery.of(context).size.width / 5),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(title),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(subTitle),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(content),
              ),
            ],
          ),
          width: 280,
          height: 160,
          decoration: BoxDecoration(
              color: backColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30))),
        ),
      ),
    );
  }
}
