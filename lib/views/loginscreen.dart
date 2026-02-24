import 'package:flutter/material.dart';
import 'package:new_project/views/homescreen.dart';
import 'package:new_project/views/signupscreen.dart';
import 'package:new_project/widget/widget_button.dart';
import 'package:new_project/widget/widget_textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle:true,
      ),
      body: Center(
        child: Padding(
          
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
            key:formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                   radius: 80,
                   backgroundColor: Colors.blue,
                   child: Icon(Icons.shopping_cart,size: 60, color: Colors.white,),
                ),
                SizedBox(height: 15,),
               WidgetTextformfield(text: 'email:',prefixIcon: Icon(Icons.email), ispass: false,),
               SizedBox(height: 10,),
                WidgetTextformfield(text: 'pass.:',prefixIcon: Icon(Icons.password_outlined),suffixIcon:Icon(Icons.visibility_off_outlined), 
                ispass: true,),
                 SizedBox(height: 10,),
                WidgetButton(text: "login",onPressed:(){if(formkey.currentState!.validate()){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                }}),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text("if dont have account"),
                 TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));}, child: Text("signup",style: TextStyle(color: Colors.blueAccent),))
              ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}