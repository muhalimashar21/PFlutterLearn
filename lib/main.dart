import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()),
              ),
              ElevatedButton(
                onPressed: tekanTombol,
                child: Text("Tambah Bilangan"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.blue,
//             title: Text('Aplikasi Hello World'),
//           ),

//           //3. Container
//           // body: Container(
//           //   color: Colors.red,
//           //   margin: EdgeInsets.all(10),
//           //   padding: EdgeInsets.all(10),
//           //   child: Container(
//           //     margin: EdgeInsets.all(10),
//           //     decoration: BoxDecoration(
//           //       borderRadius: BorderRadius.circular(20),
//           //       gradient: LinearGradient(
//           //         begin: Alignment.topLeft,
//           //         end: Alignment.bottomRight,
//           //         colors: <Color>[
//           //           Colors.yellow,
//           //           Colors.green,
//           //         ],
//           //       ),
//           //     ),
//           //   ),
//           // )

//           //2. Row dan Column
//           // body: Column(
//           //   mainAxisAlignment: MainAxisAlignment.center,
//           //   crossAxisAlignment: CrossAxisAlignment.start,
//           //   children: <Widget>[
//           //     Text("Text 1"),
//           //     Text("Text 2"),
//           //     Text("Text 3"),
//           //     Row(
//           //       children: <Widget>[
//           //         Text("Text 4"),
//           //         Text("Text 5"),
//           //         Text("Text 6"),
//           //       ],
//           //     ),
//           //   ],
//           // )

//           //1. Text Widget
//           // body: Center(
//           //   child: Container(
//           //       color: Colors.lightBlue,
//           //       width: 150,
//           //       height: 50,
//           //       child: Text(
//           //         'Saya sedang melatih kemampuan Flutter saya!',
//           //         style: TextStyle(
//           //             color: Colors.white,
//           //             fontStyle: FontStyle.italic,
//           //             fontWeight: FontWeight.w700,
//           //             fontSize: 20),
//           //       )),
//           // ),
//           ),
//     );
//   }
// }
