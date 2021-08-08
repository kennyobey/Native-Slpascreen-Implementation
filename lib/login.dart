import 'package:flutter/material.dart';
import 'package:splash_screen/signup.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var formKey;
    return Scaffold(
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Form(key: formKey, child: _buildLoginForm()
        ),
      ),
    );
  }

  _buildLoginForm() {
    resizeToAvoidBottomInset:
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15.0, 90.0, 0.0, 0.0),
                child: Text(
                  "Hello",
                  style: TextStyle(
                      fontSize: 60,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 160.0, 0.0, 0.0),
                child: Text(
                  "There",
                  style: TextStyle(
                      fontSize: 60,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(200.0, 160.0, 0.0, 0.0),
                child: Text(
                  ".",
                  style: TextStyle(
                      fontSize: 60,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      color: Colors.deepOrange),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 18.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 15),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrangeAccent)
                    ),
                  ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(top: 18.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 15),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange)),
                  ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Container(
          alignment: Alignment(1.0, 0.0),
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 20),
          child: InkWell(
            child: Text(
              "Forgot Password",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.deepOrange[600],
                  decoration: TextDecoration.underline),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.only(left: 30, right: 30),
          height: 45,
          child: GestureDetector(
            child: Material(
              borderRadius: BorderRadius.circular(20),
              shadowColor: Colors.deepOrangeAccent,
              color: Colors.deepOrange,
              elevation: 3.0,
              child: Center(
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Montserrat"),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 45,
          padding: EdgeInsets.only(left: 30, right: 30),
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2.0),
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Sign in With facebook",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w200,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 40,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("New to Spotify?", style: TextStyle(fontSize: 15,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.normal,),),
            Container(
              alignment: Alignment(1.0, 0.0),
              padding: EdgeInsets.only(top: 0.0, left: 5.0, right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                child: InkWell(
                  child: Text(
                    "Register Here",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.deepOrange[600],
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}


