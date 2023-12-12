// // ignore_for_file: unused_import, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:uas/home.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen>
//     with SingleTickerProviderStateMixin {
//   @override
//   void initState() {
//     super.initState();
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

//     Future.delayed(Duration(seconds: 2), () {
//       Navigator.of(context)
//           .pushReplacement(MaterialPageRoute(builder: (_) => Ikea()));
//     });
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
//         overlays: SystemUiOverlay.values);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 colors: [Colors.white, Colors.white],
//                 begin: Alignment.topRight,
//                 end: Alignment.bottomLeft)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               '/logoikea.png',
//             ),
//             SizedBox(height: 20),
//             Text('Creating a better everyday life'),
//             Text('For the many people')
//           ],
//         ),
//       ),
//     );
//   }
// }
