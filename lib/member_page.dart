import 'package:flutter/material.dart';
import 'member.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MemberPage extends StatefulWidget {
  static const tag = "member_page";
  final Member member;
  const MemberPage({Key key, @required this.member}) : super(key: key);

  @override
  _MemberPageState createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Card(
          child: Stack(children: [
            Image.asset(
              widget.member.url,
              // width: 50,
              // height: 50,
              colorBlendMode: BlendMode.dstATop,
            ),
            Container(
              color: Colors.black,
              margin: EdgeInsets.only(top: 100),
              child: SizedBox(
                width: 250.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Bobbers',
                  ),
                  child: AnimatedTextKit(animatedTexts: [
                    TypewriterAnimatedText(widget.member.phrase,
                        speed: const Duration(milliseconds: 200)),
                  ]),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
