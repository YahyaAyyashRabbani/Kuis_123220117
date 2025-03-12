import 'package:flutter/material.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool isError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 48, 20, 20),
        child: ListView(
          children: [
            Text("Login Page", style: TextStyle(fontSize: 24)),
            TextField(
              controller: _username,
              decoration: InputDecoration(
                hintText: "Username",
                filled: true,
                fillColor: isError ? Colors.red : Colors.white,
              ),
            ),
            TextField(
              controller: _password,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                filled: true,
                fillColor: isError
                    ? Colors.red
                    : Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_username.text == "117" && _password.text == "117") {
                  setState(() {
                    isError = false;
                  });
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) =>
                          HomePage(username: _username.text)));
                } else {
                  setState(() {
                    isError = true;
                  });
                }
                String msg = isError ? "Username/pw salah" : "Login berhasil";
                SnackBar snackBar = SnackBar(content: Text(msg));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text("LOGIN"),
            ),
          ],
        ),
      ),
    );
  }
}
