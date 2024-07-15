
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const startAlignment = Alignment.topLeft;
const endAliegment = Alignment.bottomRight;

class StartScreen extends StatelessWidget {
  const StartScreen (this.startQuiz,{super.key});

final void Function() startQuiz; 

  @override
  Widget build(context) {
    return  Center(
      child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 231, 23, 23),
        ),
        const SizedBox(height: 30),
         Text(
      'Learn Flutter the fun way!',
      style: GoogleFonts.montserrat(
        color:  const Color.fromARGB(255, 252, 252, 252),
        fontSize: 24, 
      ),
    ),
       const SizedBox(height: 30,),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_circle_right_rounded),
          label: const Text('Start Quiz'),
        ),
      ],
    ),
    );
      
}
}