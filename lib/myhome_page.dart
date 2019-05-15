import 'package:flutter/material.dart';
import 'package:insta_app/pages/favorite_page.dart';
import 'package:insta_app/pages/home_page.dart';
import 'package:insta_app/pages/plus_page.dart';
import 'package:insta_app/pages/profile_page.dart';
import 'package:insta_app/pages/search_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePages extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyHomePagesState();
  }
}


// class MyHomePagesState extends State<MyHomePages> {

//   String currentPage = 'home';
//   final Map<String , Widget> children = <String , Widget>{
//     'home': new HomePage(),
//     'search':new SearchPage(),
//     'plus': new PlusPage(),
//     'favorite': new FavoritePage(),
//     'profile': new ProfilePage()
//   };
//   // Change Page Methods
//   changePage(String NamePage){
//     setState(() {
//       currentPage = NamePage; 
//     });
//   }
//   // Appbar widget
//   final Appbar = AppBar(
//     backgroundColor: Color(0xFFF8FAF8),
//     elevation: 1,
//     centerTitle: true,
//     title: new SizedBox(
//       height: 40.0,
//       child: new Image.asset('assets/images/insta_logo.png'),
//     ),
//     leading: new Icon(Icons.camera_alt),
//     actions: <Widget>[
//       new Padding(
//         padding: EdgeInsets.only(right: 10.0),
//         child: Icon(Icons.send),
//       )
//     ],
//   );

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: Appbar,
//       body: children[currentPage],
//       bottomNavigationBar: new Container(
//         height: 45.0,
//         alignment: Alignment.center,
//         child: new BottomAppBar(
//           child: new Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               new IconButton(
//                   icon: Icon(Icons.home, color: Color(0xFF202020)),
//                   onPressed: (){changePage('home');}),
//               new IconButton(
//                   icon: Icon(Icons.search, color: Color(0xFF202020)),
//                   onPressed: (){changePage('search');}),
//               new IconButton(
//                   icon: Icon(Icons.add_circle, color: Color(0xFF202020)),
//                   onPressed: (){changePage('plus');}),
//               new IconButton(
//                   icon: Icon(Icons.favorite, color: Color(0xFF202020)),
//                   onPressed: (){changePage('favorite');}),
//               new IconButton(
//                   icon: Icon(Icons.account_circle, color: Color(0xFF202020)),
//                   onPressed: (){changePage('profile');}),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// New Style



class MyHomePagesState extends State<MyHomePages> {

  int currentIndex = 0;
  final List children = [
     new HomePage(),
     new SearchPage(),
     new PlusPage(),
     new FavoritePage(),
     new ProfilePage()
  ];
  // Change Page Methods
  changePage(int PageIndex){
    setState(() {
      currentIndex = PageIndex; 
    });
  }
  // Appbar widget
  final Appbar = AppBar(
    backgroundColor: Color(0xFFF8FAF8),
    elevation: 1,
    centerTitle: true,
    title: new SizedBox(
      height: 40.0,
      child: new Image.asset('assets/images/insta_logo.png'),
    ),
    leading: new Icon(FontAwesomeIcons.cameraRetro),
    actions: <Widget>[
      new Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: Icon(FontAwesomeIcons.paperPlane),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: Appbar,
      body: children[currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,),
            title: new Text('Home',style: TextStyle(color: Colors.black),)
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.black,),
            title: new Text('search',style: TextStyle(color: Colors.black),)
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.add_circle,color: Colors.black,),
            title: new Text('Post',style: TextStyle(color: Colors.black),)
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.favorite,color: Colors.black,),
            title: new Text('Favorite',style: TextStyle(color: Colors.black),)
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,color: Colors.black,),
            title: new Text('Profile',style: TextStyle(color: Colors.black),)
          ),
        ],
        onTap: changePage,
        currentIndex: currentIndex,
      ),
    );
  }
}
