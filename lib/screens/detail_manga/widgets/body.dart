import 'package:flutter/material.dart';
import 'package:poki_manga/core/constants.dart';
import 'package:poki_manga/screens/detail_manga/widgets/manga_card.dart';

import '../../../models/manga.dart';
import 'header_detail.dart';

class Body extends StatefulWidget {
  const Body({super.key, required this.manga});
  final Manga manga;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: size.height * 0.35,
            width: size.width,
            child: Stack(
              children: [
                const HeaderDetail(),
                Positioned(
                  top: 0,
                  left: 0,
                  child: MangaCard(
                    manga: this.widget.manga,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 30,
            decoration: const BoxDecoration(
                // color: Color.fromARGB(255, 141, 14, 14),
                ),
            child: TabBar(
              controller: _tabController,
              tabs: [
                Text("Описание"),
                Text("Главы"),
                Text("О манге"),
                Text("Связанное"),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 300,
            decoration: const BoxDecoration(
                // color: Colors.black,
                ),
            child: TabBarView(
              controller: _tabController,
              children: [
                Center(
                  child: Text("It's cloudy here"),
                ),
                Center(
                  child: Text("It's rainy here"),
                ),
                Center(
                  child: Text("It's sunny here"),
                ),
                Center(
                  child: Text("It's sunny here"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
