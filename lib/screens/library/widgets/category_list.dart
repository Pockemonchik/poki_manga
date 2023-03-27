import 'package:flutter/material.dart';
import 'package:poki_manga/core/constants.dart';


class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {

  int selectedIndex = 0;
  List categories = ['Читаю', 'Закладки', 'Прочитано'];
  @override
  Widget build(BuildContext context) {
   return Container(
    margin: EdgeInsets.symmetric(vertical: kDefaultPadding/2),
    height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              // At end item it add extra 20 right  padding
              right: index == categories.length - 1 ? kDefaultPadding : 0,
            ),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? kButtonColor
                  : kPrimaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              categories[index],
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
  
