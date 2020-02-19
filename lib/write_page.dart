import 'package:flutter/material.dart';

class WritePage extends StatefulWidget{
  @override
  WritePageState createState() => WritePageState();
}

class WritePageState extends State<WritePage>{
  final myController = TextEditingController();
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( 
        appBar: new AppBar(
        title: new Text(''),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.near_me, color: Color(0xFF8CDDD5),), 
            onPressed: null),
          
        ],

        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
              icon: new Icon(Icons.arrow_back, color: Color(0xFF8CDDD5),),
              onPressed: null)
        ), 
        body: Column(
          children: <Widget>[
            Center(child: Container(
              padding:EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Text('저 깊은 심해에 당신의 속마음을                    털어놓는 건 어떨까요?', style: TextStyle(fontSize: 18, fontFamily: 'MapoFlowerIsland'),
              textAlign: TextAlign.center,
            ))
            ),
            Flexible(
              child: TextField(
                controller: myController,
              ))
            
            ]
        )
      ),

      debugShowCheckedModeBanner: false,
      );
      
   }
}