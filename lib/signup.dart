import 'package:flutter/material.dart';

class SignUp extends StatefulWidget{
  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State <SignUp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 80.0, 0.0, 0.0),
                  child: Text(
                    "Signup",
                    style: TextStyle(
                        fontSize: 60,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(225.0, 95.0, 0.0, 0.0),
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
                  //controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 15),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrangeAccent)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(top: 18.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 15),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrangeAccent)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(top: 18.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                TextField(
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
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(top: 18.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
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
            height: 10,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            height: 45,
            child: Material(
              borderRadius: BorderRadius.circular(20),
              shadowColor: Colors.deepOrangeAccent,
              color: Colors.deepOrange,
              elevation: 3.0,
              child: GestureDetector(
                onTap: () {
                  //Navigator.pushNamed(context, '/welcome');
                },
                child: Center(
                  child: Text(
                    "SIGN UP",
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
            height: 20,
          ),
          Container(
            height: 45,
            padding: EdgeInsets.only(left: 30, right: 30),
            color: Colors.transparent,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 2.0),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "GO BACK",
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
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?", style: TextStyle(fontSize: 15,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w200,),),
              Container(
                alignment: Alignment(1.0, 0.0),
                padding: EdgeInsets.only(top: 0.0, left: 5.0, right: 20),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.pushNamed(context, '/');
                  },
                  child: InkWell(
                    child: Text(
                      "Login",
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
      ),
    );
  }
}
