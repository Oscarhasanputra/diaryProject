import 'package:diary_project/menu/menu.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:diary_project/menu/menu.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPage createState(){
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  final emailText= TextEditingController();
  final password= TextEditingController();
  final auth=FirebaseAuth.instance;
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
                    controller: emailText,
                    onSubmitted: (data){
                      
                    },
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
                    controller: password,
                    onSubmitted: login,
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

  Future<void> login(data) async{
    
    auth.signInWithEmailAndPassword(email: emailText.text,password: data);
    final test=await auth.currentUser();
    
      if(test is FirebaseUser)
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return Menu();
        }));
  }
}
