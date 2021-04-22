import 'package:flutter/material.dart';
import 'package:practice_burger_app/member_page.dart';
import 'member.dart';

class ItemsList extends StatefulWidget {
  ItemsList({Key key}) : super(key: key);

  @override
  _ItemsListState createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  @override
  Widget build(BuildContext context) {
    List<Member> members = [
      Member("Sana", "images/sana.png",
          "I used to be a straight A sudent Now im not even straight."),
      Member("Dahyun", "images/dahyun.png",
          "Drink lots of water and get enough sleep. Try not to stress. Positive thoughts only!"),
      Member("Momo", "images/momo.png",
          "Aren’t you Curious about What’s on a pig’s mind?"),
      Member("Chaeyoung", "images/chae.png",
          "Its too cold outside for angels to fly."),
      Member("Nayeon", "images/nayeon.png",
          "Look me in the eye; Now tell me what you think of me."),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MemberPage(member: members[index])));
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
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
