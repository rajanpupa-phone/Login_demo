import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Signup Page"),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 60.0),
                child: Center(
                    child: Container(
                        width: 200,
                        height: 150,
                        child: Image.asset('asset/images/flutter-logo.png')))),
            Container(
                constraints: const BoxConstraints(minWidth: 250, maxWidth: 450),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            hintText: 'Enter valid email id as abc@def.com'),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0, top: 15, bottom: 0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Password',
                            hintText: 'Enter Secure Password'),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0, top: 15, bottom: 10),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'Re Enter Same Password'),
                      ),
                    ),
                    Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ))
                  ],
                ))
          ],
        )));
  }
}
