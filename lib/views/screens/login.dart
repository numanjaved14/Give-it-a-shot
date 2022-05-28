import 'package:flutter/material.dart';
import 'package:give_it_a_shot/views/screens/nav_bar.dart';
import 'package:give_it_a_shot/views/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              height: size.height * 0.9,
              width: size.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: size.height * 0.2,
                  ),
                  Text(
                    'Welcome!',
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: Colors.grey.shade800),
                  ),
                  Text(
                    'Log in to your account',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  TextField(
                    decoration: const InputDecoration(labelText: 'E-Mail'),
                    controller: _emailcontroller,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      suffixIcon: Icon(Icons.remove_red_eye_rounded),
                    ),
                    controller: _passwordcontroller,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text('Forgot password?'),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MaterialYou(),
                          ),
                        );
                      },
                      child: const Text('Log In'),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  // Center(
                  //   child: ElevatedButton(
                  //     onPressed: () {},
                  //     style: ElevatedButton.styleFrom(
                  //       primary: Colors.grey.shade200,
                  //     ),
                  //     child: const Text(
                  //       'Google',
                  //       style: TextStyle(color: Colors.black),
                  //     ),
                  //   ),
                  // ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a Member? ',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        ),
                        child: Text(
                          'Sign up',
                          style:
                              Theme.of(context).textTheme.subtitle2!.copyWith(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
