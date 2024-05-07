import 'package:flutter/material.dart';


class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var _isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 30,
                  bottom: 20,
                  right: 20,
                  left: 20,
                ),
                width: 200,
                child: Image.asset('assets/images/chat.png'),
              ),
               Card(
                margin: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Form(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                         const TextField(
                            decoration: InputDecoration(
                              labelText: "Email address"
                            ),
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            textCapitalization: TextCapitalization.none,
                          ),
                         const TextField(
                            decoration: InputDecoration(
                                labelText: "Password"
                            ),
                            obscureText: true,
                          ),
                          const SizedBox(height: 16,),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(context).colorScheme.primaryContainer
                            ),
                              onPressed: (){},
                              child: Text(_isLogin ? "Login" : "SignUp")
                          ),
                          TextButton(
                              onPressed: (){
                                _isLogin = !_isLogin;
                              },
                              child: Text(_isLogin ? "Create new account" : "already have account")
                          )
                        ],
                    ),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
