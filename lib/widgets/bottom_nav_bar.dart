import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/constants.dart';



class BottomNavBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding/2,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.1),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 50,
            color: kPrimaryColor.withOpacity(0.1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon:  Icon(Icons.home),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.collections_bookmark),
            onPressed: () {},
          ),
           IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
           IconButton(
            icon: Icon(Icons.manage_accounts),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
