import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  final double horizontal;
  final double vertical;
  final String textButton;
  final Function onPressed;

  const MyButton(
      {super.key,
      required this.horizontal,
      required this.vertical,
      required this.textButton,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: SizedBox(
        // width: MediaQuery.of(context).size.width / 1.27,
        height: 45,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            onPressed();
          },
          child: Text(textButton, style: const TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}