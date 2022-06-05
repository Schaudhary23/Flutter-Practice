// import 'package:flutter/material.dart';
// //import 'package:flutter_training/provider/counter_provider_mixin.dart';
// // import 'package:flutter_training/bloc/counter_view.dart';
// //import 'package:flutter_training/provider/counter_provider_screen.dart';
// import 'package:flutter_training/shopping/product_catalog_screen.dart';
// import 'package:flutter_training/shopping/user_cart_mixin.dart';
// import 'package:provider/provider.dart';

// class SMDemos extends StatelessWidget {
//   const SMDemos({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(home: ProviderCounter());
//   }
// }

// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_training/firebase_options.dart';
// import 'package:flutter_training/provider/counter_provider_mixin.dart';
// import 'package:flutter_training/shopping/product_catalog_screen.dart';
// import 'package:provider/provider.dart';
// import 'firebase/home_page.dart';
// import 'google_signIn_demo/GsignIn_Demo.dart';

// Future main() async {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => Counter()),
//       ],
//       child: const SMDemos(),
//     ),
//   );
// }

// class SMDemos extends StatelessWidget {
//   const SMDemos({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ProductCatalog(),
//     );
//   }
// }

// Future main() async {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => UserCart()),
//       ],
//       child: const SMDemos(),
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'package:flutter_training/weather/screen.dart';

class LocationApp extends StatelessWidget {
  const LocationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GeoLocationScreen(),
    );
  }
}

void main() {
  runApp(const LocationApp());
}


// import 'package:flutter_training/lifecycle/Page1.dart';
// import 'package:flutter_training/sp_demos/login_screen.dart';
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import 'GetX/product_catalog_view.dart';
// import 'bloc/counter_bloc_app.dart';
// import 'flutter redux demo/flutter_redux_app.dart';
// import 'bloc/counter_bloc_app.dart';
// import 'firebase/add_user.dart';
// import 'firebase/get_user_information.dart';
// import 'sp_demos/welcome_page.dart';

// import 'Bakery app/bakery_app.dart';

// Future main() async {
//   runApp(const RestServicesDemoApp());
// }

// class RestServicesDemoApp extends StatelessWidget {
//   const RestServicesDemoApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//         debugShowCheckedModeBanner: false, home: BakeryApp());
//   }
// }

// Future main() async {
//   runApp(const SMDemoApp());
// }

// class SMDemoApp extends StatefulWidget {
//   const SMDemoApp({Key? key}) : super(key: key);

//   @override
//   State<SMDemoApp> createState() => _SMDemoAppState();
// }

// class _SMDemoAppState extends State<SMDemoApp> {
//   bool? _rememberMe;
//   bool rm = false;

//   @override
//   void initState() {
//     super.initState();
//     getValue();
//   }

//   Future<void> getValue() async {
//     SharedPreferences myPrefs = await SharedPreferences.getInstance();

//     setState(() {
//       _rememberMe = myPrefs.getBool('remember_me')!;
//       if (_rememberMe == false || _rememberMe == null) {
//         rm = false;
//       } else {
//         rm = true;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: rm ? WelcomePage() : const LoginScreen());
//   }
// }

//

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(const FBFlutterApp());
// }

// class FBFlutterApp extends StatelessWidget {
//   const FBFlutterApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(home: HomePage() //Scaffold(
//         //   appBar: AppBar(
//         //     title: const Text('Adding Record to Firebase DB'),
//         //   ),
//         //   body: const AddUser(
//         //       userName: 'Shivam',
//         //       password: 'Chaudhary',
//         //       emailId: 'chaudharyshivam582@gmail.com'),
//         // ),
//         );
//   }
// }

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(const FBFlutterApp());
// }

// class FBFlutterApp extends StatelessWidget {
//   const FBFlutterApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Users Data From Firebase DB'),
//           ),
//           body: const GetUserInformation()),
//     );
//   }
// }

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(const SignInDemo());
// }
