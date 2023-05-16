import "package:flutter/material.dart";

class MyText extends StatelessWidget {
  final double horizontal;
  final double vertical;
  final String myText;
  final String link;

  const MyText({
    super.key,
    required this.horizontal,
    required this.vertical,
    required this.myText,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(link);
            },
            child: Text(
              myText,
              style: TextStyle(color: Colors.blueAccent[200]),
            ),
          ),
        ],
      ),
    );
  }
}