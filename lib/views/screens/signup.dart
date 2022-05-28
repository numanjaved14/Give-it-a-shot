import 'package:flutter/material.dart';
import 'package:give_it_a_shot/views/screens/nav_bar.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var _image = null;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              height: size.height - MediaQuery.of(context).padding.top,
              width: size.width * 0.9,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: size.height * 0.1,
                      ),
                      Text(
                        'SIGN UP',
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: Colors.grey.shade800),
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      Stack(children: [
                        _image != null
                            ? CircleAvatar(
                                radius: 64,
                                backgroundImage: MemoryImage(_image!),
                              )
                            : const CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 64,
                                backgroundImage: AssetImage(
                                    'assets/images/profile_dummy.png'),
                              ),
                        Positioned(
                          bottom: -10,
                          left: 80,
                          child: IconButton(
                            onPressed: () {},
                            // onPressed: selectImage,
                            icon: const Icon(Icons.add_a_photo_rounded),
                          ),
                        )
                      ]),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      TextField(
                        decoration:
                            const InputDecoration(labelText: 'First Name'),
                        // controller: _emailcontroller,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      TextField(
                        decoration:
                            const InputDecoration(labelText: 'Last Name'),
                        // controller: _emailcontroller,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      TextField(
                        decoration: const InputDecoration(labelText: 'Email'),
                        // controller: _emailcontroller,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      TextField(
                        obscureText: true,
                        decoration:
                            const InputDecoration(labelText: 'Password'),
                        // controller: _emailcontroller,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      TextField(
                        decoration: const InputDecoration(labelText: 'Address'),
                        maxLines: 3,
                        // controller: _emailcontroller,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      TextField(
                        decoration:
                            const InputDecoration(labelText: 'Phone Number'),
                        // controller: _emailcontroller,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MaterialYou(),
                            ),
                          );
                        },
                        child: const Text('Sign Up'),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
