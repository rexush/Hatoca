import 'package:flutter/material.dart';
import 'package:hatoca/home.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});


  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(30),

            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 100.0, bottom: 70.0),
                    child: const Text(
                      'HATOCA',
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.w500,
                          fontSize: 50),
                    )),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: (){
                  },
                  child: const Text(
                      'Forgot Password'),
                ),
            ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: Colors.redAccent, disabledForegroundColor: Colors.grey.withOpacity(0.38),
                      ),
                      child: const Text('Login'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainScreen()));
                      },
                    )
                ),
                Container(
                    padding: const EdgeInsets.only(top: 150.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('Does not have account?'),
                        TextButton(
                          child: const Text(
                            'Sign up',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        )
                      ],
                    )
                )
              ],
            )
        )
    );
  }
}

//enum FormType {
//  login,
//  register
//}
//
//class _LoginPageState extends State<LoginPage> {
//
//  final TextEditingController _emailFilter = new TextEditingController();
//  final TextEditingController _passwordFilter = new TextEditingController();
//  String _email = "";
//  String _password = "";
//  FormType _form = FormType.login; // our default setting is to login, and we should switch to creating an account when the user chooses to
//
//  _LoginPageState() {
//    _emailFilter.addListener(_emailListen);
//    _passwordFilter.addListener(_passwordListen);
//  }
//
//  void _emailListen() {
//    if (_emailFilter.text.isEmpty) {
//      _email = "";
//    } else {
//      _email = _emailFilter.text;
//    }
//  }
//
//  void _passwordListen() {
//    if (_passwordFilter.text.isEmpty) {
//      _password = "";
//    } else {
//      _password = _passwordFilter.text;
//    }
//  }
//
//  // Swap in between our two forms, registering and logging in
//  void _formChange () async {
//    setState(() {
//      if (_form == FormType.register) {
//        _form = FormType.login;
//      } else {
//        _form = FormType.register;
//      }
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: _buildBar(context),
//      body: new Container(
//        padding: EdgeInsets.all(16.0),
//        child: new Column(
//          children: <Widget>[
//            _buildTextFields(),
//            _buildButtons(),
//          ],
//        ),
//      ),
//    );
//  }
//
//  Widget _buildBar(BuildContext context) {
//    return new AppBar(
//      title: new Text("Simple Login Example"),
//      centerTitle: true,
//    );
//  }
//
//  Widget _buildTextFields() {
//    return new Container(
//      child: new Column(
//        children: <Widget>[
//          new Container(
//            child: new TextField(
//              controller: _emailFilter,
//              decoration: new InputDecoration(
//                  labelText: 'Email'
//              ),
//            ),
//          ),
//          new Container(
//            child: new TextField(
//              controller: _passwordFilter,
//              decoration: new InputDecoration(
//                  labelText: 'Password'
//              ),
//              obscureText: true,
//            ),
//          )
//        ],
//      ),
//    );
//  }
//
//  Widget _buildButtons() {
//    if (_form == FormType.login) {
//      return new Container(
//        child: new Column(
//          children: <Widget>[
//            new RaisedButton(
//              child: new Text('Login'),
//              onPressed: _loginPressed,
//            ),
//            new FlatButton(
//              child: new Text('Dont have an account? Tap here to register.'),
//              onPressed: _formChange,
//            ),
//            new FlatButton(
//              child: new Text('Forgot Password?'),
//              onPressed: _passwordReset,
//            )
//          ],
//        ),
//      );
//    } else {
//      return new Container(
//        child: new Column(
//          children: <Widget>[
//            new RaisedButton(
//              child: new Text('Create an Account'),
//              onPressed: _createAccountPressed,
//            ),
//            new FlatButton(
//              child: new Text('Have an account? Click here to login.'),
//              onPressed: _formChange,
//            )
//          ],
//        ),
//      );
//    }
//  }
//
//  // These functions can self contain any user auth logic required, they all have access to _email and _password
//
//  void _loginPressed () {
//    print('The user wants to login with $_email and $_password');
//  }
//
//  void _createAccountPressed () {
//    print('The user wants to create an accoutn with $_email and $_password');
//
//  }
//
//  void _passwordReset () {
//    print("The user wants a password reset request sent to $_email");
//  }
//
//
//}