import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() {
    return _AuthScreenState();
  }
}

class _AuthScreenState extends State<AuthScreen> {
// Checks login/signup mode
  var _isLogin = true; //Set to login page by default

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image on Sign-Up page
              CircleAvatar(
                radius: 100,
                backgroundImage:
                    const AssetImage('assets/images/epasslogo2.png'),
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  // width: 200,
                  // child: Image.asset('assets/images/epasslogo.png' ),
                ),
              ),
              // Inupt Form Fields on Sign-Up page
              Card(
                margin: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Form(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                                labelText: 'Email Address'),
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            textCapitalization: TextCapitalization.none,
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'Password'),
                            obscureText: true,
                          ),
                          // Create login and signup buttons
                          const SizedBox(height: 12),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(_isLogin ? 'Login' : 'SignUp')),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _isLogin = !_isLogin;
                              });
                            },
                            child: Text(_isLogin
                                ? 'Create an account'
                                : 'I already have an account'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
