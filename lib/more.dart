import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:covid_app/customWidget.dart';


class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(
          children: [
            Image(
              image: AssetImage('assets/images/more2.png'),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 5,
                      ),
                      CustomContainer(
                        inputText: 'SYMPTOMS',
                      ),
                      Container(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomPics(
                                imagepath: 'assets/images/cough.png',
                                ctext: 'Sore throat',
                              ),
                              CustomPics(
                                imagepath: 'assets/images/breath.png',
                                ctext: 'Breathlessness',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomPics(
                                imagepath: 'assets/images/headac.png',
                                ctext: 'Headache',
                              ),
                              CustomPics(
                                imagepath: 'assets/images/fever.png',
                                ctext: 'Fever',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 5,
                      ),
                      CustomContainer(
                        inputText: 'PREVENTION',
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                        //prevention 1
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF3C4043),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 8.0,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(25, 11, 25, 11),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Image.asset('assets/images/soc.png'),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Maintain a safe distance', style: TextStyle(fontFamily: 'OtomanopeeOne', fontSize: 13),),
                                      Text('from anyone who is', style: TextStyle(fontFamily: 'OtomanopeeOne', fontSize: 13),),
                                      Text('coughing or sneezing', style: TextStyle(fontFamily: 'OtomanopeeOne', fontSize: 13),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                        //prevention 2
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF3C4043),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 8.0,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(25, 11, 25, 11),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Image.asset('assets/images/mask.png'),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Wear a mask when', style: TextStyle(fontFamily: 'OtomanopeeOne', fontSize: 13),),
                                      Text('physical distancing is', style: TextStyle(fontFamily: 'OtomanopeeOne', fontSize: 13),),
                                      Text('not possible', style: TextStyle(fontFamily: 'OtomanopeeOne', fontSize: 13),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                        //prevention 3
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF3C4043),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 8.0,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(25, 11, 25, 11),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Image.asset('assets/images/vacc.png'),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Get vaccinated as soon', style: TextStyle(fontFamily: 'OtomanopeeOne', fontSize: 13),),
                                      Text('as possible', style: TextStyle(fontFamily: 'OtomanopeeOne', fontSize: 13),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                        //prevention 4
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF3C4043),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 8.0,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(25, 11, 25, 11),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Image.asset('assets/images/hand.png'),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Clean your hands often', style: TextStyle(fontFamily: 'OtomanopeeOne', fontSize: 13),),
                                      Text('Use soap and water', style: TextStyle(fontFamily: 'OtomanopeeOne', fontSize: 13),),
                                      Text('or an alcohol-based ', style: TextStyle(fontFamily: 'OtomanopeeOne', fontSize: 13),),
                                      Text('hand rub', style: TextStyle(fontFamily: 'OtomanopeeOne', fontSize: 13),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),),
      ),
    );
  }
}
