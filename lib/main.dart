import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar 1',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/RET.jpg',
              height: 100,
              width: 100,
              ),
              Image.network('https://cdn.quasar.dev/img/parallax2.jpg',
              height: 150,
              width: 100,
              ),
            Text('Biodata',style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              letterSpacing: 5,
            wordSpacing: 3,
            color: Color(0xFF558B2F),
              shadows: [
            Shadow(
              color:  Colors.lightGreenAccent.shade100,
              blurRadius: 2,
              offset: Offset(2, 2),
            )
          ]
              ),
          ),
          SizedBox(
            height: 13,
          ),
          Text("Nama : Surya Ramdhan",
            style: TextStyle(
            decoration: TextDecoration.underline,
            decorationColor: Colors.redAccent,
            decorationStyle: TextDecorationStyle.wavy,
            decorationThickness: 2,
          ),),
          SizedBox(
            width: 10,
          ),
          Text("Npm : 20421081"),
          SizedBox(
            width: 15,
          ),
          Text("Prodi : Informatika"),
          SizedBox(
            width: 15,
          ),
          Text("Hobi : Bermain Game"),
          SizedBox(
            width: 15,
          ),
          Text("Alamat : Purnawirawan Raya"),
          SizedBox(
            width: 15,
          )
          ],)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.favorite),
      ),
    );
  }
}