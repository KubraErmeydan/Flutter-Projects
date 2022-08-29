import 'package:bankingapp/card.dart';
import 'package:bankingapp/cards.dart';
import 'package:bankingapp/invest.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff070619),
      appBar: BankAppBar(),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: SizedBox(
                  height: 80.0,
                  width: 80.0,
                  child: Image.asset('assets/images/profile.jpg'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: Text(
                  'Ad Soyad',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.green,
              isScrollable: true,
              indicatorColor: Colors.transparent,
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w700,
              ),
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              tabs: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    color: const Color(0xffE7E9F8),
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        "Genel",
                        style: TextStyle(
                            //color: Colors.green,
                            ),
                      ),
                      SizedBox(
                        height: 0.8,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    color: Color(0xffE7E9F8),
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text('Kartlar'),
                      SizedBox(
                        height: 0.8,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    color: Color(0xffE7E9F8),
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text('Yatırım'),
                      SizedBox(
                        height: 0.8,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                SingleChildScrollView(
                  child: Column(children: const [
                    BankCard(
                        backColor: Color(0xff4372f0),
                        title: 'Hesap Özetiniz',
                        subTitle: 'Son Ekstre Tutarı',
                        content: '500.00'),
                    BankCard(
                        backColor: Color(0xff8552EA),
                        title: 'Varlıklar/Borçlar',
                        subTitle: 'altbaşlık',
                        content: 'içerik'),
                    BankCard(
                      backColor: Color(0xff621CEF),
                      title: 'İstatistik',
                      subTitle: 'Bugün',
                      content: "Sparkline",
                    ),
                  ]),
                ),
                const Cards(),
                const Invest(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar BankAppBar() {
    return AppBar(
      backgroundColor: Color(0xff070619),
      elevation: 0,
      title: Row(
        children: const <Widget>[],
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: IconButton(
            icon: const Icon(
              Icons.notifications_none,
              size: 32,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
