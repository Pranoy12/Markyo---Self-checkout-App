import 'package:flutter/material.dart';
import './signup.dart';
import './home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();

    String firstName = '';
    String secondName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Markyo',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
        ),
      ),
        backgroundColor: Color.fromARGB(255, 158, 1, 185),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
            padding: EdgeInsets.only(left: 35,right: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hello, $firstName $secondName' ,
                style: TextStyle(
                  fontSize: 30.0
                ),
              ),
                Container(
                  padding: EdgeInsets.only(top: 20.0,bottom: 20.0),
                  child: TextField(
                    controller: _textController1,
                    decoration: InputDecoration(
                      hintText: 'Username'
                    ),
                  ),
                ),
                TextField(
                  controller: _textController2,
                  decoration: InputDecoration(
                    hintText: 'Password'
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 40.0),
                      child: RaisedButton(
                        onPressed: () {
                          setState(() {
                            firstName = _textController1.text;
                            secondName = _textController2.text;
                            /* Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                                return Home();
                              }),); */
                          });
                        },
                        child: Text('Login'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40.0),
                      child: RaisedButton(
                        color: Colors.purple,
                        onPressed: () {
                          setState(() {
                            firstName = _textController1.text;
                            secondName = _textController2.text;
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                                return signup();
                            }),
                            ); 
                          });
                        },
                        child: Text('Sign up',
                        style: TextStyle(
                          color: Colors.white
                        ),),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ), 
      floatingActionButton: FloatingActionButton(
        child: Text('clear'),
        onPressed: () {
          setState(() {
            firstName = '';
            secondName = '';

             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
              return Home();
            }),); 
          });
        },
        backgroundColor: Color.fromARGB(255, 158, 1, 185),
      ),
      );
  }
}