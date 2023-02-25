import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Login Page',
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

// Define a custom Form widget.
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 60.0),
                child: Center(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter valid email id as abc@gmail.com'),
                  controller: emailController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                  controller: passwordController,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 60.0),
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  if (emailController.text == "user" &&
                      passwordController.text == "password") {
                    Navigator.pushReplacementNamed(context, '/MainScreen');
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          content: Text("Invalid user/password"),
                        );
                      },
                    );
                  }
                },
                label: const Text('Login'),
              ),
              const SizedBox(
                height: 130,
              ),
              const Text('New User? Create Account')
            ],
          ),
        ));
  }
}
