import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),

      ),
      body: customcard(),
    );
  }
}

class customcard extends StatelessWidget {
  const customcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey
      ),
      child: Column(
        children: [
        
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVuOaL3euEy2L1sSEyVrU7PHncGewGacYnTw&s'),
          SizedBox(height: 3,),
          Text('DISNEY')
        ],
      ),
    );
  }
}