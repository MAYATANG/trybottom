import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    var textbutton= Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: null,
            child: const Text('TextButton1'),
          ),
          const SizedBox(height: 30),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: const Text('TextButton2'),
          ),
          const SizedBox(height: 30),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('TextButton3'),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    var elevatedbutton = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: null,
            child: const Text('ElevatedButton1'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('ElevatedButton2'),
          ),
        ],
      ),
    );

    var outlinebutton = OutlinedButton(
      onPressed: () {
        debugPrint('Received click');
      },
      child: const Text('OutlineButton'),
    );

    var app = MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Center(
          child:Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            textbutton,
            elevatedbutton,
            outlinebutton,
          ],
        ),),
      ),
      );
    return app;
  }
}






///////////////////////////////////////////
// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   static const String _title = 'Flutter Code Sample';
//   @override
//   Widget build(BuildContext context) {
//     var outlinebutton = OutlinedButton(
//       onPressed: () {
//         debugPrint('Received click');
//       },
//       child: const Text('Click Me'),
//     );
//     var outlinebutton2 = OutlinedButton(
//       onPressed: () {
//         debugPrint('Received click');
//       },
//       child: const Text('Click Me'),
//     );
//
//     var app = MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: Text(_title)),
//         body: Center(
//           child:Column(mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             outlinebutton,
//             outlinebutton2,
//           ],
//         ),),
//     ),);
//     return app;
//   }
// }
//


/////////////////////////////////////////////
// import 'package:flutter/material.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const String _title = 'Flutter Code Sample';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const MyStatefulWidget(),
//       ),
//     );
//   }
// }
//
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   @override
//   Widget build(BuildContext context) {
//     final ButtonStyle style =
//     ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
//
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           const SizedBox(height: 30),
//           ElevatedButton(
//             style: style,
//             onPressed: () {},
//             child: const Text('Disabled'),
//           ),
//           const SizedBox(height: 30),
//           ElevatedButton(
//             style: style,
//             onPressed: () {},
//             child: const Text('Enabled'),
//           ),
//           const SizedBox(height: 30),
//           ElevatedButton(
//             style: style,
//             onPressed: null,
//             child: const Text('測試'),
//           ),
//         ],
//       ),
//     );
//   }
// }
/////////////////////////////////////////////
// import 'package:flutter/material.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const String _title = 'Flutter Code Sample';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const MyStatelessWidget(),
//       ),
//     );
//   }
// }
//
// class MyStatelessWidget extends StatelessWidget {
//   const MyStatelessWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           TextButton(
//             style: TextButton.styleFrom(
//               textStyle: const TextStyle(fontSize: 20),
//             ),
//             onPressed: null,
//             child: const Text('Disabled'),
//           ),
//           const SizedBox(height: 30),
//           TextButton(
//             style: TextButton.styleFrom(
//               textStyle: const TextStyle(fontSize: 20),
//             ),
//             onPressed: null,
//             child: const Text('Enabled'),
//           ),
//           const SizedBox(height: 30),
//           ClipRRect(
//             borderRadius: BorderRadius.circular(4),
//             child: Stack(
//               children: <Widget>[
//                 Positioned.fill(
//                   child: Container(
//                     decoration: const BoxDecoration(
//                       gradient: LinearGradient(
//                         colors: <Color>[
//                           Color(0xFF0D47A1),
//                           Color(0xFF1976D2),
//                           Color(0xFF42A5F5),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 TextButton(
//                   style: TextButton.styleFrom(
//                     padding: const EdgeInsets.all(16.0),
//                     primary: Colors.white,
//                     textStyle: const TextStyle(fontSize: 20),
//                   ),
//                   onPressed: () {},
//                   child: const Text('Gradient'),
//                 ),
//
//
//               ],
//             ),
//           ),
//           const SizedBox(height: 30),
//           ClipRRect(
//             borderRadius: BorderRadius.circular(4),
//             child: Stack(
//               children: <Widget>[
//                 Positioned.fill(
//                   child: Container(
//                     decoration: const BoxDecoration(
//                       gradient: LinearGradient(
//                         colors: <Color>[
//                           Color(0xFF0D47A1),
//                           Color(0xFF1976D2),
//
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 TextButton(
//                   style: TextButton.styleFrom(
//                     padding: const EdgeInsets.all(16.0),
//                     primary: Colors.white,
//                     textStyle: const TextStyle(fontSize: 20),
//                   ),
//                   onPressed: () {},
//                   child: const Text('Gradient'),
//                 ),
//
//
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


