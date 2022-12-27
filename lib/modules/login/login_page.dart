import 'package:flutter/material.dart';

import '../../shared/component/component.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formKey = GlobalKey<FormState>();
  TextEditingController emailControl = TextEditingController();
  TextEditingController passControl = TextEditingController();

  bool isVisiable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const Image(image: AssetImage('images/login.png')),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    'Login',
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'email must be not empty';
                        }
                        return null;
                      },
                      controller: emailControl,
                      type: TextInputType.emailAddress,
                      label: 'Email',
                      prefixIcon: Icons.email_outlined),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'password must be not empty';
                        }
                        return null;
                      },
                      controller: passControl,
                      type: TextInputType.emailAddress,
                      label: 'Password',
                      prefixIcon: Icons.lock,
                      isPassword: isVisiable,
                      suffixPressed: () {
                        setState(() {
                          isVisiable = !isVisiable;
                        });
                      },
                      suffixIcon:
                          isVisiable ? Icons.visibility : Icons.visibility_off),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print('email => ${emailControl.text}');
                        print('password => ${passControl.text}');
                      }
                    },
                    background: Colors.orange.shade400,
                    text: 'Login',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextButton(
                          onPressed: () {}, child: const Text("Register Now"))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
