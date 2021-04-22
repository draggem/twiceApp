import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'header.dart';
import 'categories.dart';
import 'items_list.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.teal, centerTitle: true)),
      home: Hamburger(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hamburger extends StatefulWidget {
  Hamburger({Key key}) : super(key: key);

  @override
  _HamburgerState createState() => _HamburgerState();
}

class _HamburgerState extends State<Hamburger> {
  //int _index = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              expandedHeight: 100,
              centerTitle: true,
              title: Text("트와이스 클럽"),
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              actions: [IconButton(onPressed: () {}, icon: Icon(Icons.info))],
            ),
            Header(),
            Categories(),
            ItemsList(),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    margin: EdgeInsets.only(top: 40, bottom: 40),
                    child: Image.asset("images/rose.jpg"),
                  ),
                ],
              ),
            )
          ],
        ),
        extendBody: true,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
          child: Container(
            child: BottomAppBar(
              color: Colors.teal,
              shape: CircularNotchedRectangle(),
              child: Row(children: [
                Spacer(),
                IconButton(
                  color: Colors.teal,
                  onPressed: () {},
                  icon: Icon(Icons.add_alert),
                ),
                Spacer(),
                Spacer(),
                IconButton(
                  color: Colors.teal,
                  onPressed: () {},
                  icon: Icon(Icons.bookmark),
                ),
                Spacer(),
              ]),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          onPressed: () {},
          child: const Icon(Icons.face_retouching_natural),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
