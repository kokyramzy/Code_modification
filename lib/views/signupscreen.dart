import 'package:flutter/material.dart';
import 'package:new_project/views/loginscreen.dart';
import 'package:new_project/widget/widget_button.dart';
import 'package:new_project/widget/widget_textformfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Signup',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle:true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius:  80,
                  backgroundColor: Colors.blueAccent,
                  child: Icon(Icons.shopping_basket_outlined),
                ),
                SizedBox(height: 20,),
                  WidgetTextformfield(text: 'email',prefixIcon: Icon(Icons.email),ispass: false,),
                 SizedBox(height: 10,),
                   WidgetTextformfield(text: 'PASS',prefixIcon: Icon(Icons.password_outlined),suffixIcon: Icon(Icons.visibility_off_outlined),ispass: true,),
                 SizedBox(height: 10,),
                   WidgetTextformfield(text: 'NAME',prefixIcon: Icon(Icons.text_decrease),ispass: false,),
                 SizedBox(height: 10,),
                   WidgetTextformfield(text: 'PHONE',prefixIcon: Icon(Icons.numbers_outlined),ispass: false,),
                 SizedBox(height: 20,),
                    WidgetButton(text: "Signup",onPressed:(){
                      if(formkey.currentState!.validate()){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      }
                  }),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text("if have account"),
                   TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));}, child: Text("login",style: TextStyle(color: Colors.blueAccent),))
                ],)
              ],
            ),
          ),
          
          ),
          
        ),
      ),
    );
  }
}