import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListStories extends StatelessWidget{
  
  final topText = new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      new Text(
        'استوری ها',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      new Row(
        children: <Widget>[
          new Icon(Icons.play_arrow),
          new Text(
            'مشاهده همه',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      )
    ],
  );
  
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(16.0),
      child: new Column(
        children: <Widget>[
          topText,
          new Expanded(
            child: new Padding(
              padding: EdgeInsets.only(top:8.0),
              child: new ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context,index){
                  return new Stack(
                    children: <Widget>[
                      new Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/logo.png")
                          )
                        ),
                      ),
                      index == 0 
                      ? new Positioned(
                        bottom: 0.0,
                        right: 3.0,
                        child: new CircleAvatar(
                          backgroundColor: Colors.blueAccent,
                          radius: 10.0,
                          child: new Icon(Icons.add,size: 14.0,),
                        ),
                      )
                      : new Container()
                    ],
                  );
                },

              ),
            ),
          )
        ],
      ),
    );
  }
}