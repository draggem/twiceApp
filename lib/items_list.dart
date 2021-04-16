import 'package:flutter/material.dart';
import 'member.dart';

class ItemsList extends StatefulWidget {
  ItemsList({Key key}) : super(key: key);

  @override
  _ItemsListState createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  EdgeInsets sanaLeft = EdgeInsets.only(left: 70, top: 60);
  EdgeInsets dahyunLeft = EdgeInsets.only(left: 80, top: 60);
  @override
  Widget build(BuildContext context) {
    List<Member> members = [
      Member("Sana", "images/sana.png"),
      Member("Dahyun", "images/dahyun.png"),
      Member("Momo", "images/momo.png"),
      Member("Chaeyoung", "images/chae.png"),
      Member("Nayeon", "images/nayeon.png"),
    ];

    return Container(
      child: SliverToBoxAdapter(
        child: Container(
          height: 240,
          margin: EdgeInsets.only(top: 10),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: members.length,
            itemBuilder: (context, index) {
              final item = members[index];
              return Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 20, right: index == members.length ? 20 : 0),
                    height: 300,
                    width: 200,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("sana_page");
                      },
                      child: Card(
                        elevation: 3,
                        color: Colors.teal,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Text(
                                item.name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Container(
                                height: 175,
                                child: Image.asset(item.url),
                              )
                            ],
                          ),
                        ),
                        margin: EdgeInsets.all(5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Positioned(
                  //   child: GestureDetector(
                  //     onTap: () {
                  //       Navigator.of(context).pushNamed("sana_page");
                  //     },
                  //     child: Container(
                  //         margin: reverse ? sanaLeft : dahyunLeft,
                  //         child: Column(
                  //           children: [

                  //           ],
                  //         )),
                  //   ),
                  // ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
