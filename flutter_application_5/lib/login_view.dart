import 'package:flutter/material.dart';
import 'package:flutter_application_5/Custom_Button.dart';
import 'package:flutter_application_5/signup_view.dart';

class LoginViewState extends StatefulWidget {
  const LoginViewState({super.key});

  @override
  State<LoginViewState> createState() => _LoginViewStateState();
}

class _LoginViewStateState extends State<LoginViewState> {
  bool isNotVisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task_5'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              const Text(
                'WELCOME',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Email',
                style: TextStyle(fontSize: 15),
              ),
              TextFormField(),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Password',
                style: TextStyle(fontSize: 15),
              ),
              TextFormField(
                  obscureText: isNotVisable,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isNotVisable = !isNotVisable;
                        });
                      },
                      icon: const Icon(Icons.remove_red_eye_outlined),
                    ),
                  )),
              const SizedBox(
                height: 25,
              ),
              const SizedBox(
                height: 60,
              ),
              CustomButton(
                text: 'LOG IN',
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('I haven\'t account?'),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
