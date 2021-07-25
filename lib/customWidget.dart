import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({this.inputText='null'});
  final String inputText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
          padding: (EdgeInsets.fromLTRB(15, 10, 10, 10)),
          child: Text(
            inputText,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: 'OtomanopeeOne', fontSize: 18,fontWeight: FontWeight.bold),
          )),
    );
  }
}


class CustomPics extends StatelessWidget {
  const CustomPics({this.imagepath = 'null',this.ctext = 'null'});
  final String imagepath;
  final String ctext;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 7, 15, 5),
            child: Image(
              image:
              AssetImage(imagepath),
            ),
          ),
          Text(
            ctext,
            style: TextStyle(
                fontFamily: 'OtomanopeeOne',
                fontSize: 13),
          )
        ],
      ),
      width: MediaQuery.of(context).size.width * 0.43,
      height: MediaQuery.of(context).size.width * 0.43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF3C4043),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8.0,
          )
        ],
      ),
    );
  }
}




class CusInfo extends StatefulWidget {
  const CusInfo({this.customText='null', this.customnum='Null',this.customimg='Null', this.cuscolor = const Color(0xFF3C4043)});
  final String customText;
  final String customnum;
  final String customimg;
  final Color cuscolor;

  @override
  _CusInfoState createState() => _CusInfoState();
}

class _CusInfoState extends State<CusInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: (EdgeInsets.fromLTRB(15, 0, 0, 10)),
      child: Container(

        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 15, 3),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 17, 0, 0),
                    child: Text(widget.customText,textAlign: TextAlign.left,style: TextStyle(color: Colors.white,fontFamily: 'OtomanopeeOne', fontSize: 9)),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.043,
              ),
              Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                    child: Text(widget.customnum,style: TextStyle(fontFamily: 'OtomanopeeOne', fontSize: 17,color: widget.cuscolor)),
                  ),

                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.033,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 3, 0, 10),
                  child: Image.asset(widget.customimg),
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
    );
  }
}




