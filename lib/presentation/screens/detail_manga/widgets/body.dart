import 'package:flutter/material.dart';
import 'package:poki_manga/core/constants.dart';
import 'package:poki_manga/presentation/screens/detail_manga/widgets/manga_card.dart';

import '../../../../domain/entities/manga_entity.dart';
import 'chapter_list.dart';
import 'header_detail.dart';

class Body extends StatefulWidget {
  const Body({super.key, required this.manga});
  final MangaEntity manga;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 280,
            width: size.width,
            child: Stack(
              children: [
                const HeaderDetail(),
                Positioned(
                  top: 0,
                  left: 0,
                  child: MangaEntityCard(
                    manga: widget.manga,
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
                Text("Связанное"),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 300,
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  margin: const EdgeInsets.all(kDefaultPadding),
                  child: Text(
                    """У королевской семьи был огромный долг. Чтобы получить невообразимые деньги и вернуть его, они выдали принцессу Виолетту замуж за внебрачного ребёнка герцога, Винтера.
К счастью, хоть брак и был по расчету, Виолетта влюбилась с первого взгляда в своего супруга, однако брачная жизнь с самого начала была противоречивой.
«Будь это простое дело, я бы даже не пришла к тебе с этой просьбой. Давай в этот раз вместе...»""",
                    style: Theme.of(context).textTheme.labelMedium?.merge(
                          TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                  ),
                ),
                ChapterList(chapter_list: widget.manga.chapter_list),
                Center(
                  child: Text("It's sunny here"),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            width: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(7)),
              color: kButtonColor,
              boxShadow: [
                BoxShadow(blurRadius: 3, color: kPrimaryColorWithOpasity)
              ],
            ),
            // width: 150,
            child: Center(
              child: TextButton(
                child: Text(
                  "Продолжить чтение",
                  style: Theme.of(context).textTheme.bodyMedium?.merge(
                        TextStyle(fontSize: 16),
                      ),
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   SlideLeftRoute(
                  //     page: DetailMangaEntityScreen(
                  //         manga: manga),
                  //   ),
                  // );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
