import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Profile',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.grey.shade800),
                  ),
                  Stack(
                    children: [
                      _image != null
                          ? CircleAvatar(
                              radius: 64,
                              backgroundImage: MemoryImage(_image!),
                            )
                          : const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 64,
                              backgroundImage:
                                  AssetImage('assets/images/profile_dummy.png'),
                            ),
                      Positioned(
                        bottom: -8,
                        left: 80,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {},
                            // onPressed: selectImage,
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'First Name',
                      suffixIcon: Icon(Icons.edit),
                    ),
                    // controller: _emailcontroller,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Last Name',
                      suffixIcon: Icon(Icons.edit),
                    ),
                    // controller: _emailcontroller,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                    // controller: _emailcontroller,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      suffixIcon: Icon(Icons.edit),
                    ),
                    // controller: _emailcontroller,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Address',
                      suffixIcon: Icon(Icons.edit),
                    ),
                    // controller: _emailcontroller,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Save Changes'),
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
