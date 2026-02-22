import 'package:flutter/material.dart';

class WidgetTextformfield extends StatefulWidget {
  const WidgetTextformfield({super.key, required this.text, this.prefixIcon, this.suffixIcon, required this.ispass});
   final String text;
   final Widget? prefixIcon;
   final Widget? suffixIcon;
   final bool ispass;

  @override
  State<WidgetTextformfield> createState() => _WidgetTextformfieldState();
}

class _WidgetTextformfieldState extends State<WidgetTextformfield> {
  bool isvisbile=false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
          if(value==null||value.isEmpty){
          return 'enter some text';
        }
         return null;
      },
      decoration: InputDecoration(
        hintText: widget.text,
        prefixIcon:widget.prefixIcon,
        suffixIcon:widget.ispass? IconButton(onPressed: (){}, icon: Icon(Icons.visibility)):null,
          
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
      ),
    );
  }
}