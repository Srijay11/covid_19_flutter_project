import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart' as dom;
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  List<String> infected = [];
  List<String> defected = [];

  void _getData() async {
    final response =
        await http.get(Uri.parse('https://www.worldometers.info/coronavirus/'));
    dom.Document document = parser.parse(response.body);
    final element1 = document.getElementsByClassName('maincounter-number');

    setState(() {
      infected = element1
          .map((element) => element.getElementsByTagName("span")[0].innerHtml)
          .toList();
    });
  }

  @override
  void initState() {
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: infected.length == 0
          ? Text('')
          : ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [


                    Image(
                      image: AssetImage('assets/images/home2.png'),
                    ),


                    Container(
                      height: 5,
                    ),


                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: (EdgeInsets.fromLTRB(15, 10, 10, 10)),
                        child: Text(
                          'COVID-19 INFORMATION',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'OtomanopeeOne',
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),


                    Container(
                      height: 5,
                    ),

                Row(
                  children: [
                  Padding(
                  padding: (EdgeInsets.fromLTRB(15, 0, 0, 10)),
                  child: Container(

                  child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 15, 3),
                  child: Column(
                  children: [
                  Container(
                  child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 17, 0, 0),
                  child: Text('INFECTED',textAlign: TextAlign.left,style: TextStyle(color: Colors.white,fontFamily: 'OtomanopeeOne', fontSize: 9)),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.043,
                  ),
                  Container(
                  child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                  child: Text(infected[0],style: TextStyle(fontFamily: 'OtomanopeeOne', fontSize: 12,color: Color(0xFF007FFF))),
                  ),

                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.033,
                  ),
                  Container(
                  child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 3, 0, 10),
                  child: Image.asset('assets/images/infected.png'),
                  ),

                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.06,
                  )
                  ],
                  ),
                  ),

                  width: MediaQuery.of(context).size.width*0.28,
                  height: MediaQuery.of(context).size.height*0.14,

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
                  ),
                  ),


                    Padding(
                      padding: (EdgeInsets.fromLTRB(15, 0, 0, 10)),
                      child: Container(

                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 15, 3),
                          child: Column(
                            children: [
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(10, 17, 0, 0),
                                  child: Text('RECOVERED',textAlign: TextAlign.left,style: TextStyle(color: Colors.white,fontFamily: 'OtomanopeeOne', fontSize: 9)),
                                ),
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height*0.043,
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                  child: Text(infected[2],style: TextStyle(fontFamily: 'OtomanopeeOne', fontSize: 12,color: Color(0xFF4DC274))),
                                ),

                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height*0.033,
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(15, 3, 0, 10),
                                  child: Image.asset('assets/images/recovered.png'),
                                ),

                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height*0.06,
                              )
                            ],
                          ),
                        ),

                        width: MediaQuery.of(context).size.width*0.28,
                        height: MediaQuery.of(context).size.height*0.14,

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
                      ),
                    ),




                    Padding(
                      padding: (EdgeInsets.fromLTRB(15, 0, 0, 10)),
                      child: Container(

                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 15, 3),
                          child: Column(
                            children: [
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(10, 17, 0, 0),
                                  child: Text('DECEASED',textAlign: TextAlign.left,style: TextStyle(color: Colors.white,fontFamily: 'OtomanopeeOne', fontSize: 9)),
                                ),
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height*0.043,
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                  child: Text(infected[1],style: TextStyle(fontFamily: 'OtomanopeeOne', fontSize: 12,color: Color(0xFFF63E40))),
                                ),

                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height*0.033,
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(15, 3, 0, 10),
                                  child: Image.asset('assets/images/deceased.png'),
                                ),

                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height*0.06,
                              )
                            ],
                          ),
                        ),

                        width: MediaQuery.of(context).size.width*0.28,
                        height: MediaQuery.of(context).size.height*0.14,

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
                      ),
                    ),




                ],
                ),


                    Container(
                      height: 5,
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: WebView(
                            initialUrl: 'https://www.rferl.org/a/30490414.html',
                            javascriptMode: JavascriptMode.unrestricted,
                          ),
                        ),
                        height: MediaQuery.of(context).size.height * 0.36,
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
                      ),
                    ),
                  ],
                );
              },
            ),
    );
  }
}
