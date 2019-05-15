import 'package:flutter/material.dart';
import 'package:insta_app/list_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  final insta_post = new Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      new Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/logo.png")
                        )
                  ),
                  margin: EdgeInsets.only(left: 12.0),
                ),
                new Text(
                  "Artin.dev",
                  style: TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            ),
            new IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: null,
            )
          ],
        ),
      ),
      new Row(
        children: <Widget>[
          new Expanded(
            child: new Image.asset(
                "assets/images/Cover.png",
                fit: BoxFit.cover),
          )
        ],
      ),
      new Padding(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Row(
              children: <Widget>[
                new IconButton(
                  icon: Icon(
                    FontAwesomeIcons.heart,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: Icon(
                    FontAwesomeIcons.comment,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: Icon(
                    FontAwesomeIcons.paperPlane,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            new IconButton(
              icon: Icon(
                FontAwesomeIcons.bookmark,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      new Padding(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
        child: new Text(
          "محمد و علی و کارو و ۱۰۰ نفر دیگر این پست را لایک کردند",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      new Padding(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.gravatar.com/avatar/9667df4dc150454870ef8eaa9b14d029?s=200&d=mm&r=g"))),
              margin: EdgeInsets.only(left: 5.0, right: 12.0),
            ),
            new Expanded(
              child: new TextField(
                decoration: new InputDecoration(
                    border: InputBorder.none,
                    hintText: "نظری دارید ؟",
                    hintStyle: TextStyle(fontWeight: FontWeight.w500)),
              ),
            )
          ],
        ),
      ),
      new Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: new Text(
          "۱ روز قبل",
          style: TextStyle(color: Colors.grey),
        ),
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return new ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return index == 0
            ? new SizedBox(
                height: deviceSize.height * 0.15,
                child: new ListStories(),
              )
            : insta_post;
      },
    );
  }
}
