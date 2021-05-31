import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String value1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(36, 50, 36, 0),
          child: Container(
            width: double.infinity,
            // color: Colors.yellow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Column(
                    children: [
                      Column(
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
                              fontSize: 24,
                            ),
                          ),
                          TextField(
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: '+7(',
                              hintStyle: TextStyle(
                                fontSize: 20,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF7AC41B)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF7AC41B)),
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                value1 = value;
                              });
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            height: 42,
                            width: 120,
                            child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Color(0xFFFFE472),
                                ),
                              ),
                              child: Text(
                                'Войти',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Roboto-Regular',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(
                              'Нажимая кнопку «Войти», вы принимаете Пользовательское соглашение «Инватакси»',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 270,
                      ),
                      Image(
                        image: AssetImage(
                          'images/kangoo.png',
                        ),
                        fit: BoxFit.fill,
                        height: 210,
                        width: 400,
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
