import 'package:flutter/material.dart';


class Appbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgcol,
      child: Column(

        children: [
          Container(
            height: 80,
            color:  barcol,

          ),

        ],
      ),
    );
  }
}

const barcol = Color(0xFFb8648e);
const bgcol = Color(0xFFfbf2fa);