import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:secondproject/HomeSlideShowPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late String _username, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/logo.jpg',
                      fit: BoxFit
                          .cover, // Use BoxFit.cover to fill the entire space without borders
                      width: double
                          .infinity, // Ensure the image takes the full width
                      height: double.infinity,
                      // Ensure the image takes the full height
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'My App',
              style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      style: const TextStyle(color: Colors.grey),
                      controller: usernameController,
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.grey,
                      autofocus: true,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'[a-zA-Z\s]')),
                      ],
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        prefixIcon: Icon(Icons.person),
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        contentPadding:
                            EdgeInsets.fromLTRB(10, 10, 10, 10),
                        fillColor: Colors.white,
                        focusColor: Colors.grey,
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide:
                                BorderSide(width: 1, color: Colors.red)),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        filled: true,
                      ),
                      onChanged: (value) {
                        _username = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Username';
                        }
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      style: TextStyle(color: Colors.grey),
                      controller: passwordController,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.grey,
                      autofocus: true,
                      inputFormatters: const [
                        // FilteringTextInputFormatter.allow(RegExp(r'^[0-9]*$')),
                      ],
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        fillColor: Colors.white,
                        focusColor: Colors.grey,
                        errorBorder: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.red),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide:
                                BorderSide(width: 1, color: Colors.red)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        filled: true,
                      ),
                      onChanged: (value) {
                        _password = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Password';
                        }
                      },
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          print('Username       =  ' + _username!);
                          print('Password       =  ' + _password!);

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20.0), // Border radius
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign In',
                            style: TextStyle(
                                color: Colors.black, fontSize: 15 // Text color
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[900], // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20.0), // Border radius
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Icon(Icons.facebook,
                              size: 25, color: Colors.white),
                        ),
                        Text(
                          'Facebook',
                          style: TextStyle(
                              color: Colors.white, fontSize: 13 // Text color
                              ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue, // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20.0), // Border radius
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(Icons.lock_clock,
                              size: 25, color: Colors.white),
                        ),
                        Text(
                          'Twitter',
                          style: TextStyle(
                              color: Colors.white, fontSize: 13 // Text color
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
