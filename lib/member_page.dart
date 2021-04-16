import 'package:flutter/material.dart';

class MemberPage extends StatelessWidget {
  static const tag = "sana_page";
  const MemberPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Card(
          child: Image.asset("images/sana.png"),
        ),
      ),
    );
  }
}
