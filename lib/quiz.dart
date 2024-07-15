import 'package:adv_app_quiz/data/questions.dart';
import 'package:adv_app_quiz/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_app_quiz/results_screen.dart';
import 'package:adv_app_quiz/start_screen.dart';


class Quiz extends StatefulWidget{
const Quiz ({super.key});

@override
State<Quiz> createState(){
  return _QuizState();

}
}
class _QuizState extends State<Quiz>{

 List<String> selectAnswers = [];
var activeScreen ='start-screen';

void switchScreen(){
  setState(() {
    activeScreen = 'questions-screen';
  },);
}


void chooseAnswer(String answer){
  selectAnswers.add(answer);

  if(selectAnswers.length == questions.length){
    setState(() {
      
      activeScreen = 'results-screen';
    });
  }
}

void restartQuiz(){
  setState(() {
    selectAnswers = [];
    activeScreen = 'questions-screen';
  });
}

void backHome(){
  setState(() {
    selectAnswers = [];
    activeScreen = 'start-screen';
  });
}
@override

Widget build(context){
  Widget screenWidget =StartScreen(switchScreen);

  if(activeScreen=='questions-screen'){
    screenWidget =  QuestionsScreen(
      onSelectAnswer:chooseAnswer,);
  }

if(activeScreen == 'results-screen'){
  screenWidget = ResultsScreen(
    onbackhome: backHome,
    chosenAnsewers: selectAnswers,
    onrestartQuiz: restartQuiz,
   
    );
}




return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.amber,
                ],
                begin:
                    startAlignment, // this is a Var create to improve changes
                end: endAliegment
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
} 
}
// can use this in child. Tenary option.
//         activeScreen == 'start-screen' 
     //     ? StartScreen(switchScreen)
      //    : const QuestionsScreen(),