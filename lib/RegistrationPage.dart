import 'package:flutter/material.dart';
import 'package:taxi_app/LoginPage.dart';

import 'EntryPage.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String value1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 40, 24, 35),
          child: Container(
            width: double.infinity,
            // color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: <Widget>[
                    Text(
                      'ИНВАТАКСИ',
                      style: TextStyle(
                        color: Color(0xFF444444),
                        fontFamily: 'Aqum',
                        fontSize: 42,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Регистрация',
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
                    TextField(
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Телефон сопровождения',
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
                    TextField(
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'ИИН',
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
                    TextField(
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Группа инвалидности',
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
                    SizedBox(height: 8,),
                    Container(
                      alignment: Alignment.centerLeft,
                      // color: Colors.teal,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text('Пожалуйста прикрепите фото удостоверения', style: TextStyle(fontSize: 13,),),
                          InkWell(
                            onTap: (){},
                            child:  Text('Прикрепить', style: TextStyle(fontSize: 13, color: Colors.green),),
                          ),
                          Text('Справка 035-1/y', style: TextStyle(fontSize: 13),),
                          InkWell(
                            onTap: (){},
                            child:  Text('Прикрепить', style: TextStyle(fontSize: 13,color: Colors.green,),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.visibility_outlined, size: 40,),
                        SizedBox(width: 8,),
                        SizedBox(
                          height: 42,
                          width: 100,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                            },
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
                        SizedBox(width: 8,),
                        SizedBox(
                          height: 42,
                          // width: 120,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => EntryPage()));
                            },
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all<Color>(
                                Color(0xFFFFE472),
                              ),
                            ),
                            child: Text(
                              'Заригистроваться',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Roboto-Regular',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Image(
                  image: AssetImage(
                    'images/kangoo.png',
                  ),
                  fit: BoxFit.fill,
                  width: 350,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
