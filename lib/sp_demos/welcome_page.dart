import 'package:flutter/material.dart';
import 'package:flutter_training/sp_demos/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomePage extends StatefulWidget {
  String? uname, passwd;
  WelcomePage({Key? key, this.uname, this.passwd}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String? _uname, _passwd;
  LoginScreen login = LoginScreen();

  @override
  void initState() {
    super.initState();
    getValues();
  }

  Future<void> getValues() async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    setState(() {
      _uname = myPrefs.getString('uname');
      _passwd = myPrefs.getString('passwd');
    });
    if (_uname == null && _passwd == null) {
      _uname = widget.uname;
      _passwd = widget.passwd;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Using Shared Preferennces'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Welcome $_uname',
                style: const TextStyle(fontSize: 24.0),
              ),
              const SizedBox(height: 10.0),
              Text('Your Password is : $_passwd'),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () async {
                  SharedPreferences myPrefs =
                      await SharedPreferences.getInstance();
                  myPrefs.setString('uname', '');
                  myPrefs.setString('passwd', '');
                  //Navigator.pop(context);
                },
                child: const Text('Logout'),
              )
            ],
          ),
        ));
  }
}
