import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Image(
                width: size.width * 0.3,
                image: AssetImage("images/bee.png"),
              ),
            ),
            Text(
              "BEE DELIVERY",
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "poppins"),
            ),
            Text(
              "at your doorstep",
              style: TextStyle(letterSpacing: 2.0),
            ),
            Text(
              "LOGIN",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,
                  fontFamily: "poppins"),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (val) => email = val,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (val) => password = val,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                ),
              ),
            ),
            Container(
              width: size.width * 0.9,
              height: size.height * 0.06,

              child: ElevatedButton(
                onPressed: _onPressed,
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellowAccent,

                ),
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "poppins",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onPressed() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String email = pref.getString("email");
    String password = pref.getString("password");

    if (this.email.isEmpty) {
      return;
    }

    if (this.password.isEmpty) {
      return;
    }

    if (email == this.email && password == this.password) {
     _showToast("Welcome!");
      // Navigator.push(context, MaterialPageRoute(builder: (_) {
      //   return;
      // }));
    } else {
      _showToast("Wrong Email or Password!");
    }
  }

  _showToast(String msg) =>  Fluttertoast.showToast(
    msg: "Welcome",
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: Colors.yellowAccent,
    textColor: Colors.black,
  );
}
