import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatBot Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('InteractiveViewer')),
//         body: const MyStatelessWidget(),
//       ),
//     );
//   }
// }

// class MyStatelessWidget extends StatelessWidget {
//   const MyStatelessWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: InteractiveViewer(
//         boundaryMargin: const EdgeInsets.all(200),
//         constrained: false,
//         minScale: 0.1,
//         maxScale: 2,
//         child: Column(
//           children: List.generate(100, (i) {
//             return Row(
//               children: List.generate(100, (j) {
//                 return Container(
//                   width: 100,
//                   height: 50,
//                   decoration: BoxDecoration(border: Border.all()),
//                   child: Text('$i:$j'),
//                 );
//               }),
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }