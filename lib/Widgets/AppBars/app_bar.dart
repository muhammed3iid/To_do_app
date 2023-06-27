import 'package:flutter/material.dart';

import '../../constants/colors.dart';

AppBar appBar() {
  return AppBar(
    backgroundColor: tdBGColor,
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Icon(
          Icons.menu,
          color: tdBlack,
          size: 30,
        ),
        SizedBox(
          height: 40,
          width: 40,
          child: ClipRRect(
              // borderRadius: BorderRadius.circular(20),
              // child: Image.asset('assets/images/avatar.jpg'),
              child: Icon(
            color: tdBlack,
            Icons.person,
          )),
        )
      ],
    ),
  );
}
