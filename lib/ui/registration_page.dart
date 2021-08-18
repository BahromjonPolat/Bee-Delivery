import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  String name;
  String email;
  String phone;
  String password;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: size.height * 0.2,
              alignment: Alignment.center,
              child: Text(
                "SIGN UP",
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "poppins"),
              ),
            ),
            Container(
              height: size.height * 0.5,
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextField(
                    onChanged: (val) => name = val,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        labelText: "Name"),
                    style: TextStyle(),
                  ),
                  TextField(
                    onChanged: (val) => email = val,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        labelText: "Email"),
                    style: TextStyle(),
                  ),
                  TextField(
                    onChanged: (val) => phone = val,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        labelText: "Phone"),
                    style: TextStyle(),
                  ),
                  TextField(
                    onChanged: (val) => password = val,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        labelText: "Password"),
                    style: TextStyle(),
                  ),
                  Container(
                    width: size.width * 1.0,
                    height: size.height * 0.065,
                    child: RaisedButton(
                      color: Colors.yellow,
                      onPressed: _onPressed,
                      child: Text(
                        "Registration",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          fontFamily: "poppins"
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onPressed()  {
    if (name.isEmpty) {
      return;
    }

    if (email.isEmpty) {
      return;
    }

    if (phone.isEmpty) {
      return;
    }

    if (password.isEmpty) {
      return;
    }

    print(name);
    print(email);
    print(phone);
    print(password);

  }
}

