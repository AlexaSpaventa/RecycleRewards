import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'EcoBin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: MyHomePage(),
    );
  }
} //This code can be copied it is for basic setup

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return new Scaffold( //The Scaffold is the way to set up all other element which will be children
      body : Center( //Always do this
        child: Column( //This too
          mainAxisAlignment: MainAxisAlignment.center, //Aligning green container in center
          children: <Widget>[
            new Container( //New container this is code from Zeplin
                width: 288,
                height: 85,
                decoration: new BoxDecoration(
                    color: Color(0xff68d31a),
                    border: Border.all(
                        color: Color(0xff000000),
                        width: 5
                    ),
                    borderRadius: BorderRadius.circular(8)
                )
                ,child: new Text("Recycle Now", //This is the text that goes in the container it is a child of the container
            style: TextStyle( //These are stylist things for the text
              fontFamily: 'ChalkboardSE',
              color: Color(0xff000000),
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,



            )
                //text align is for horizontal
                ,textAlign: TextAlign.center
                //This is aligning the text to the center of the container it is a child of

        )

            )
            ,new Container( //Container for eco image
                width: 189,
                height: 189,
                decoration: new BoxDecoration(
                  //image: DecorationImage(image: AssetImage(assets/eco.png) ) ,
                  boxShadow: [BoxShadow(
                      color: Color(0x00000000),
                      offset: Offset(0,3),
                      blurRadius: 6,
                      spreadRadius: 0

                  ) ],

                )
            )
            ,new Container( //Container for garbage
                width: 241,
                height: 286,
                decoration: new BoxDecoration(
                  boxShadow: [BoxShadow(
                      color: Color(0x29000000),
                      offset: Offset(0,3),
                      blurRadius: 6,
                      spreadRadius: 0

                  ) ],

                )
            )
          ]
        )
      )
      );


  }
}

