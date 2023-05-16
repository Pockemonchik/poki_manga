import 'package:flutter/material.dart';
import 'package:poki_manga/core/constants.dart';

import '../../../../domain/entities/manga_entity.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 350,
      width: size.width,
      margin: const EdgeInsets.only(
          top: 0,
          bottom: kDefaultPadding / 2,
          left: kDefaultPadding,
          right: kDefaultPadding / 2),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(kDefaultRadius),
        // color: Color.fromARGB(255, 30, 194, 131),
        // boxShadow: [BoxShadow(blurRadius: 3, color: kPrimaryColorWithOpasity),
        // ],
      ),
      child: Row(
        children: [
          Column(
            children: [
              CircleAvatar(
                backgroundColor: kBackgroundColor,
                child: const Text('AH'),
                radius: 40.0,
              )
               
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: kDefaultPadding/2,
                bottom: kDefaultPadding,
                right: kDefaultPadding,
                left: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 250,
                  width: 170,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "username",
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        Text("chota eshe",
                            style: Theme.of(context).textTheme.bodyMedium),
                        const SizedBox(height: kDefaultPadding / 2),
                        const SizedBox(height: kDefaultPadding / 2),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
