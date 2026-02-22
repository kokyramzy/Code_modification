import 'package:flutter/material.dart';
import 'package:new_project/widget/customecard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),

      ),
      body: GridView.builder(itemCount: 8,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 3,crossAxisSpacing: 10,childAspectRatio: 1), itemBuilder: (Container,index){
        return customcard();
      } )
    );
  }
}
