import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessCard extends StatefulWidget {
  @override
  _BusinessCardState createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(child:
      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(

            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Color(0xff18187f),
              Color(0xfffec030),
            ])),
        child: Column(
          children: [
            SizedBox(
              height: 35.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.deepPurple,radius: 49,
                        child:
                        CircleAvatar(backgroundImage: AssetImage('assets/mr_aseem.jpg')
                          ,backgroundColor: Colors.deepPurple,radius: 45,),),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text("Mr.Assem Khatib",style: TextStyle(fontSize: 26,color: Colors.white),),
                        Text("Chairman",style: TextStyle(fontSize: 17.5,color: Colors.white),),

                      ],)
                    ],
                  ),
                  RaisedButton(

                    padding: EdgeInsets.all(0.0),
                    onPressed:() async => await launch(
                        "http://www.beno-1.com/"),
                    child: Container(
                      width: 150,
                      padding: EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                      color: Color(0xfffec030)
                      ),
                      child: Text(
                        "Visit Site",
                        // AppLocalizations.of(context).translate("sign_in"),
                        textAlign: TextAlign.center,
                        style:
                        TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Container(
                    width: 500,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/card_arabic.jpg"))),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 500,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/card_english.jpg"))),
                  )   
                  ,

                  SizedBox(height: 100,)
                ],
              ),
            )
          ],
        ),
      ),),
    );
  }
}
