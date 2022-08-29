import 'package:flutter/material.dart';

// Kartlar kısmında kart ekleme ve Kullanılan kartın görünümü
class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          WhiteBox,
          const Positioned(
              left: 32,
              top: 20,
              child: Text(
                'Kartlarınız',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              )),
          Positioned(left: 32, top: 50, child: PinkBox),
          Positioned(right: 0, bottom: 0, child: AddBox),
        ],
      ),
    );
  }
}

Widget WhiteBox = Container(
  decoration: const BoxDecoration(
      color: Color(0xffE7E9F8),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40), topRight: Radius.circular(40))),
);

Widget PinkBox = Container(
  width: 160,
  height: 250,
  child: Column(
    children: const [
      Padding(
        padding: EdgeInsets.only(top: 100, left: 10),
        child: Text("XXX BANKASI",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500)),
      ),
      Padding(
        padding: EdgeInsets.only(top: 10, left: 10),
        child: Text("7777 TL          ",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500)),
      ),
      Padding(
        padding: EdgeInsets.only(top: 30, right: 5),
        child: Text("       **** 4385",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500)),
      )
    ],
  ),
  decoration: const BoxDecoration(
    color: Colors.amber,
    gradient: LinearGradient(
      colors: <Color>[Color(0xffF0618F), Color(0xff6C65BF)],
    ),
    borderRadius: BorderRadius.all(Radius.circular(30)),
  ),
);

Widget AddBox = Container(
  width: 300,
  height: 170,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      const Text("BANKANIZ            ",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          )),
      Row(
        children: [
          IconButton(
            icon: const Icon(
              Icons.credit_card,
              size: 32,
            ),
            onPressed: () {},
          ),
          Column(
            children: [
              const Text("XXX BANKASI",
                  style: const TextStyle(
                      fontWeight: FontWeight.w300, fontSize: 10)),
              const Text(
                "444 4 444",
                style: const TextStyle(fontSize: 10),
              ),
            ],
          )
        ],
      ),
      const Text("YENİ KART EKLE          ",
          style: const TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400)),
    ],
  ),
  decoration: const BoxDecoration(
      color: Color(0xffE7E9F8),
      borderRadius: const BorderRadius.all(Radius.circular(30))),
);
