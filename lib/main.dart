import 'package:flutter/material.dart';
import "komponen/me_text_field.dart";
import "komponen/me_text.dart";
import 'komponen/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _myKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController pwController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          top: false,
          right: false,
          left: false,
          bottom: false,
          child: Form(
            key: _myKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.supervised_user_circle,
                  size: MediaQuery.of(context).size.height / 3.6,
                ),
                MyTextField(
                  horizontal: 40,
                  vertical: 10,
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                  // icon: const Icon(Icons.email),
                ),
                MyTextField(
                  horizontal: 40,
                  vertical: 10,
                  controller: pwController,
                  hintText: "Password",
                  obscureText: true,
                  // icon: const Icon(Icons.lock),
                ),
                const MyText(
                  horizontal: 45,
                  vertical: 5,
                  myText: "Forgot Password? ",
                  link: ""),
                const MyText(
                  horizontal: 45,
                  vertical: 5,
                  myText: "Sign up? ",
                  link: "",
                ),
                MyButton(
                  horizontal: 0,
                  vertical: 8,
                  textButton: "Submit",
                  onPressed: () {
                    
                  },
                )
              ],
            ),
          )),
    );
  }
}