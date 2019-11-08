import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              colorFilter: ColorFilter.linearToSrgbGamma(),
              image: AssetImage("images/diary.jpg")
            )
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center ,
            children: <Widget>[
              Form(
                child: Container(
                  padding: EdgeInsets.all(10.00),
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextField(
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        fontSize: 30.0,
                        decorationColor: Colors.black
                      ),
                      labelText: "Email",

                      border:UnderlineInputBorder(borderSide: BorderSide(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 100.0,
                      )),
                      
                    ),
                  ),
                ),
              ),
              Form(
                child: Container(
                  padding: EdgeInsets.all(10.00),
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        fontSize: 30.0,
                        decorationColor: Colors.black
                      ),
                      labelText: "Password",

                      border:UnderlineInputBorder(borderSide: BorderSide(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 100.0,
                      )),
                      
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      
  }
}