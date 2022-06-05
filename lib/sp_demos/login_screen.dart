import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'welcome_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController unameController = TextEditingController();
  TextEditingController passwdController = TextEditingController();

  bool? rememberMe = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String usname, pass;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: unameController,
                    decoration: InputDecoration(
                      labelText: 'User name',
                      hintText: 'User name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'User name cant be blank';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    controller: passwdController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password cant be blank';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Checkbox(
                        value: rememberMe,
                        onChanged: (value) async {
                          setState(() {
                            rememberMe = value;
                          });
                          SharedPreferences myPrefs =
                              await SharedPreferences.getInstance();

                          myPrefs.setBool('remember_me', value!);
                        },
                      ),
                      const SizedBox(width: 8.0),
                      const Text('Remember Me')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate() && rememberMe!) {
                          SharedPreferences myPrefs =
                              await SharedPreferences.getInstance();
                          myPrefs.setString('uname', unameController.text);
                          myPrefs.setString('passwd', passwdController.text);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WelcomePage()));
                        } else {
                          usname = unameController.text;
                          pass = passwdController.text;

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    WelcomePage(uname: usname, passwd: pass)),
                          );
                        }
                      },
                      child: const Text('Login'),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
