import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String text;
  Details(this.text);
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Stack(

        children:[
          Container(color: bgcol,),

          Align(alignment: Alignment.center,child: Image.asset('assets/home.jpg')),

          Column(

              children:[
                Container(
                  height: 80,
                  color:  barcol,
                  child:Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(Icons.copy),
                      onPressed: () {
                        FlutterClipboard.copy(widget.text).then((value) => _key
                            .currentState
                        // ignore: deprecated_member_use
                            .showSnackBar(new SnackBar(content: Text('Copied'))));
                      },
                    ),
                  ),

                ),

                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.center,
                  height: double.infinity,
                  width: double.infinity,
                  child: SelectableText(
                      widget.text.isEmpty ? 'No Text Available' : widget.text),
                ),




              ]),]);
  }
}

const bgcol = Color(0xFFfbf2fa);
const barcol = Color(0xFFb8648e);



