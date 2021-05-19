import 'package:flutter/material.dart';
import 'package:log_in_two/screens/mainScreen.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Icon visibilityIcon = Icon(Icons.visibility_off_outlined);

  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Вход",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 36,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "E-mail"),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: isObscure,
              decoration: InputDecoration(
                  suffixIcon: InkWell(
                      onTap: () {
                        if (isObscure == true) {
                          setState(() {
                            isObscure = false;
                            visibilityIcon = Icon(Icons.visibility_outlined);
                          });
                        } else {
                          setState(() {
                            isObscure = true;
                            visibilityIcon =
                                Icon(Icons.visibility_off_outlined);
                          });
                        }
                      },
                      child: visibilityIcon),
                  border: OutlineInputBorder(),
                  hintText: "Password"),
            ),
            SizedBox(
              height: 66,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainScreen()));
              },
              child: Container(
                padding: EdgeInsets.all(12),
                child: Text(
                  "Войти",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ))),
            ),
          ],
        ),
      ),
    );
  }
}
