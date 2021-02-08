import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:Argaam_Flutter/screens/homepage.dart';
import 'package:Argaam_Flutter/theme/config.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> with TickerProviderStateMixin {
  AnimationController _controller;
  AnimationController _controller1;
  AnimationController _controller2;
  Animation<double> _animation;
  Animation<double> _animation1;
  Animation<double> _animation2;

  bool dir = true;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _controller1 =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _controller2 =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool rememberMe = false;
  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    _animation = Tween<double>(begin: dir ? 0 : 1, end: dir ? 1 : 1)
        .animate(_controller);
    _animation1 = Tween<double>(begin: dir ? 0 : 1, end: dir ? 1 : 1)
        .animate(_controller1);
    _animation2 = Tween<double>(begin: dir ? 0 : 1, end: dir ? 1 : 1)
        .animate(_controller2);
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: ListView(
          children: <Widget>[
            // SizedBox(height: 15),
            // Container(
            //   child: Align(
            //     alignment: Alignment.topRight,
            //     child: CircleAvatar(
            //       radius: 20,
            //       child: Image(image: AssetImage("assets/icons/back.png"),
            //         fit: BoxFit.contain,
            //       ),
            //     ),
            //   ),
            // ),
            //SizedBox(height: 20),
            Container(
                height: 80,
                width: 50,
                child: Image(
                    image: AssetImage("assets/images/colorlogo.png"),
                    fit: BoxFit.contain)),
            SizedBox(height: 30),
            Container(
              child: Center(
                  child: Text("Welcome", style: TextStyle(fontSize: 35))),
            ),
            Container(
              child: Center(
                  child: Text("Enter your details to get started",
                      style: TextStyle(fontSize: 20))),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextField(
                style: TextStyle(color: primary_text_one),
                controller: nameController,
                decoration: InputDecoration(
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  border:OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  suffixIcon: Icon(Icons.account_circle,
                      color: primary_text_one, size: 25.0),
                  filled: true,
                  fillColor: primary_background_card_one,
                  // enabledBorder: OutlineInputBorder(
                  //     borderSide: const BorderSide(color: primary_text_one, width: 0.0)
                  // ),
                  //labelStyle: TextStyle(color: primary_text_one),
                  labelText: 'Username',
                  errorStyle: TextStyle(
                    color: primary_text_one,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextField(
                style: TextStyle(color: primary_text_one),
                controller: nameController,
                decoration: InputDecoration(
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  border:OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined,
                      color: primary_text_one, size: 25.0),
                  filled: true,
                  fillColor: primary_background_card_one,
                  // enabledBorder: OutlineInputBorder(
                  //     borderSide: const BorderSide(color: primary_text_one, width: 0.0)
                  // ),
                  labelStyle: TextStyle(color: primary_text_one),
                  labelText: 'Password',
                  errorStyle: TextStyle(
                    color: primary_text_one,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: <Widget>[
                  Theme(
                    data: ThemeData(unselectedWidgetColor: primary_button),
                    child: new CheckboxListTile(
                        title: Text('Remember me'),
                        value: rememberMe,
                        tristate: false,
                        activeColor: primary_button,
                        onChanged: (bool newValue) {
                          setState(() {
                            rememberMe = newValue;
                          });
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Container(
                height: 55,
                child: RaisedButton(
                    child: Text("Register Now",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => homepage()),
                      );
                    }),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 20,
                    width: 90,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Text("OR",
                      style: TextStyle(fontSize: 18)),
                  Container(
                    height: 20,
                    width: 90,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RotationTransition(
                    turns: _animation,
                    child: MaterialButton(
                        onPressed: () {
                          _controller.forward(from: 0);
                          setState(() {
                            dir = !dir;
                          });
                          _displaySnackBar(context);
                        },
                        color: Colors.white,
                        height: 60,
                        shape: CircleBorder(),
                        child: Image(
                            image: AssetImage("assets/images/Gmail.png"),
                            height: 30,
                            color: Colors.black)),
                  ),
                  RotationTransition(
                    turns: _animation1,
                    child: MaterialButton(
                        onPressed: () {
                          _controller1.forward(from: 0);
                          //setState(() {dir = !dir;});
                          _displaySnackBar(context);
                        },
                        color: Colors.white,
                        height: 60,
                        shape: CircleBorder(),
                        child: Image(
                            image: AssetImage("assets/images/Apple.png"),
                            height: 30,
                            color: Colors.black)),
                  ),
                  RotationTransition(
                    turns: _animation2,
                    child: MaterialButton(
                        onPressed: () {
                          _controller2.forward(from: 0);
                          setState(() {
                            dir = !dir;
                          });
                          _displaySnackBar(context);
                        },
                        color: Colors.white,
                        height: 60,
                        shape: CircleBorder(),
                        child: Image(
                            image: AssetImage("assets/images/Facebook.png"),
                            height: 30,
                            color: Colors.black)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _displaySnackBar(BuildContext context) {
    final snackBar = SnackBar(
        content:
            Text('This function is under development by team F L U T T E R.'));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
