import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taxi App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String value1 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(36, 43, 36, 0),
          child: Container(
            color: Colors.yellow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        'ИНВАТАКСИ',
                        style: TextStyle(
                          color: Color(0xFF444444),
                          fontFamily: 'Aqum',
                          fontSize: 46,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Войти',
                        style: TextStyle(
                          fontFamily: 'MyriadPro-SemiCn',
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: '+7',
                        ),
                        onChanged: (value) {
                          setState(() {
                            value1 = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
