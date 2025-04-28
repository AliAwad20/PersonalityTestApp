import 'package:flutter/material.dart';

class Startscreen extends StatelessWidget {
  const Startscreen(this.startQuiz,{super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
  return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
          SizedBox(height: 80),
          Text(
            "Discover Your \n Personality Type!",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          SizedBox(height: 20),
          Text('💖   🗺️   \n📅   🧠',textAlign: TextAlign.center ,style: TextStyle(fontSize: 50),),
          SizedBox(height: 50),
          ElevatedButton(
           onPressed: startQuiz,
           child: Text('start test'),
          ),
        ],
      ),
    );
  }
}
