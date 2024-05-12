import 'package:flutter/material.dart';

class Startup extends StatelessWidget {
  const Startup(this.startqz,{super.key});
  final void Function() startqz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 0.89,
              child: Image.asset(
                "assets/images/quiz.png",
                width: 300,
                height: 250,
               // color: Colors.red,
              ),
            ),
            // const Icon(Icons.ac_unit),
            const Text(
              "Think, learn, and win!",
              style: TextStyle(
                  fontSize: 21.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 10),
            OutlinedButton.icon(
              onPressed: startqz ,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.black,
                //  padding:const EdgeInsets.all(20)
              ),
              icon: const Icon(Icons.arrow_forward_ios_sharp),
              label: const Text(
                "next",
                style: TextStyle(fontSize: 22),
              ),
            )
          ],
        ),
      );
  }
}
