import 'package:flutter/material.dart';
import 'package:flutter_application_5/custom_button.dart';
import 'package:flutter_application_5/login_view.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                'WELCOME',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Name',
                style: TextStyle(fontSize: 15),
              ),
              TextFormField(),
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
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isNotVisable = !isNotVisable;
                      });
                    },
                    icon: const Icon(Icons.remove_red_eye_outlined),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Confirm Password',
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
                height: 60,
              ),
              CustomButton(
                text: 'Sign Up',
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have account?'),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => LoginViewState()));
                        },
                        child: Text(
                          'LOGIN',
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
