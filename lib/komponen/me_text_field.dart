import "package:flutter/material.dart";

class MyTextField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;
  final double horizontal;
  final double vertical;
  // final Icon icon;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.horizontal,
      required this.vertical,
      // required this.icon
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          // prefixIcon: icon,
          // contentPadding:
          //     const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          // hintText: hintText,
          fillColor: const Color.fromARGB(160, 255, 255, 255),
          filled: true,
          // focusedErrorBorder: const OutlineInputBorder(
          //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
          //   borderSide: BorderSide(color: Colors.green),
          // ),
          errorStyle: const TextStyle(height: 0, color: Colors.transparent),
          // focusedBorder: const OutlineInputBorder(
          //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
          //   borderSide: BorderSide(color: Colors.green),
          // ),
          label: Text(hintText)
        ),
        obscureText: obscureText,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "";
          }
          return null;
        }, // validator
      ),
    );
  }
}