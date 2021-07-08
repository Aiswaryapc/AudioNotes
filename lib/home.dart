import 'package:flutter/material.dart';
import 'dart:core';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'app_bar.dart';
import 'slide.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File _image  ;

  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future getImage1() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Stack(

        children:[
          Container(color: bgcol,),

          Align(alignment: Alignment.center,child: Image.asset('assets/home.jpg')),

          Column(

              children:[
                Appbar(),

                Padding( padding: const EdgeInsets.all(30),
                  child: CarouselSlider(
                    items: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                            color: cardcol,
                            width: 300,

                            child: _image == null
                                ? Text('',style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ))
                                : Image.file(_image)

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                            color: cardcol,
                            width: 300,

                            child: _image == null
                                ? Text('',style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ))
                                : Image.file(_image)

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                            color: cardcol,
                            width: 300,

                            child: _image == null
                                ? Text('',style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ))
                                : Image.file(_image)

                        ),
                      ),


                    ],
                    options: CarouselOptions(
                      enableInfiniteScroll: false,
                      viewportFraction: 0.9,
                      height: 400,

                    ),
                  ),
                ),
                Align(alignment: Alignment.bottomCenter,
                    child: Padding( padding: const EdgeInsets.all(20),
                        child: ElevatedButton(  child : Icon(Icons.camera_alt),
                          style: ElevatedButton.styleFrom(
                            primary: barcol ,
                            elevation: 6,
                            onPrimary: Colors.white,
                            onSurface: Colors.grey,
                          ),onPressed:getImage,))),

                Align(alignment: Alignment.bottomCenter,
                    child: Padding( padding: const EdgeInsets.all(10),
                        child: ElevatedButton(  child : Icon(Icons.attach_file_sharp),
                          style: ElevatedButton.styleFrom(
                            primary: barcol ,
                            elevation: 6,
                            onPrimary: Colors.white,
                            onSurface: Colors.grey,
                          ),onPressed:getImage1,))),
                Align(alignment: Alignment.bottomCenter,
                    child: Padding( padding: const EdgeInsets.all(20),
                        child: ElevatedButton(  child : Icon(Icons.attach_file_sharp),
                          style: ElevatedButton.styleFrom(
                            primary: barcol ,
                            elevation: 6,
                            onPrimary: Colors.white,
                            onSurface: Colors.grey,
                            minimumSize: Size(double.infinity, 40),
                          ),onPressed:getImage1,)))
              ]),]);
  }
}
const bgcol = Color(0xFFfbf2fa);
const barcol = Color(0xFFb8648e);