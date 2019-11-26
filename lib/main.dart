import 'dart:async';
import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

void main () => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(primaryColor: Colors.orange, accentColor: Colors.white),
  home: SplashScreen(),
));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginScreen())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(backgroundColor: Colors.white,
                      radius: 50.0,
                      child: Icon(Icons.camera_alt,
                      color: Colors.orangeAccent,
                      size: 50.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Text("TRINGOO",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      "Save... Live... Remember",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(3, 9, 23, 1),
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -50,
              left: 0,
              child: Container(
                child: Container(
                  width: width,
                  height: 1000,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/close-up-photography-of-a-man-3031396.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: new BackdropFilter(
                    filter: new prefix0.ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                    child: new Container(
                      decoration: new BoxDecoration(
                        color: Colors.white.withOpacity(.2),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text("Tringoo",
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 40.0,
                    ),),
                  ),
                  SizedBox(height: 0.5,),
                  Center(
                    child: Text("Save... Live... Remember...",
                    style: TextStyle(color: Colors.white.withOpacity(.7),)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(40.0),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.person,color: Colors.white,),
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock, color: Colors.white,),
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                  Center(
                    child: RaisedButton.icon(
                      color: Colors.orangeAccent,
                      icon: Icon(Icons.account_circle, color: Colors.white,),
                      label: Text("Sign in to Tringoo",
                      style: TextStyle(color: Colors.white),),
                      onPressed: () {
                        print('Gbayi');
                      },
                    ),
                  ),
                  Center(
                    child: new FlatButton(
                      child: Text(
                      'Forgot password?',
                        style: TextStyle(color: Colors.white),
                        ),
                         onPressed: () {},
                        ),
                    ),
                  Center(
                    child: new FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignupPage()));
                        },
                        child: Text('Don\'t have an Account? Sign up now',
                        style: TextStyle(color: Colors.white.withOpacity(.5))),
                          ),
                        ),
                  SizedBox(
                    height: 200,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(3, 1, 23, 1),
      resizeToAvoidBottomPadding: true,
      body: Container(
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -50,
              left: 0,
              child: Container(
                width: width,
                height: 1000,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/close-up-photography-of-a-man-3031396.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: new BackdropFilter(
                  filter: new prefix0.ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                  child: new Container(
                    decoration: new BoxDecoration(
                      color: Colors.white.withOpacity(.2),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text("Tringoo",
                    style: TextStyle(color: Colors.white,
                    fontSize: 40.0 )),
                  ),
                  SizedBox(
                    height: 0.5,
                  ),
                  Center(
                    child: Text("Save... Live... Remember...",
                    style: TextStyle(color: Colors.white.withOpacity(.7),)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(40.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        prefixIcon: Icon(Icons.person, color: Colors.white,),
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.mail, color: Colors.white,),
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock, color: Colors.white,),
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                        prefixIcon: Icon(Icons.lock,color: Colors.white,),
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Registered As",
                        prefixIcon: Icon(Icons.person_add, color: Colors.white,),
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: RaisedButton.icon(
                      color: Colors.orangeAccent,
                      icon: Icon(Icons.note_add, color: Colors.white,),
                      label: Text("Sign up to Tringoo",
                      style: TextStyle(color: Colors.white,),),
                      onPressed: () {},
                    ),
                  ),
                  Center(
                    child: new FlatButton(
                      onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      child: Text("Already have an account? Sign in",
                      style: TextStyle(color: Colors.white.withOpacity(.5))),
                    ),
                  ),
                  SizedBox(height: 50,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}