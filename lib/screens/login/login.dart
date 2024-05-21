import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const String email = 'admin@mail.com';
const String password = 'Inicio1';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? emailInput;
  String? passwordInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/loginimageo2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 20),
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.45),
              child: Center(
                child: Column(
                  children: <Widget>[
                    const Text(
                      'Welcome!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Please login to continue on our app',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // input for de email and password
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            onChanged: (value) {
                              emailInput = value;
                            },
                            decoration: const InputDecoration(
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              filled: true,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            onChanged: (value) {
                              passwordInput = value;
                            },
                            decoration: const InputDecoration(
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              filled: true,
                            ),
                            obscureText: true,
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              if (emailInput == email &&
                                  passwordInput == password) {
                                Navigator.pushNamed(context, '/home');
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      surfaceTintColor: Colors.grey[100],
                                      backgroundColor: Colors.white,
                                      title: const Text('Error'),
                                      content: const Text(
                                          'The email or password is incorrect'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text('Close'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 155),
                              backgroundColor: Colors.white,
                              surfaceTintColor: Colors.grey[300],
                            ),
                            child: const Text('Login'),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'or',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              surfaceTintColor: Colors.grey[300],
                            ),
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.g_translate),
                                  SizedBox(width: 10),
                                  Text('Continue with Google'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
