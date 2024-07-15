import 'package:adv_app_quiz/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adv_app_quiz/summary_things/questions_sumary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.onbackhome,
    required this.chosenAnsewers,
    required this.onrestartQuiz,
  });
//buttons

  final void Function() onrestartQuiz;
  final void Function() onbackhome;
  final List<String> chosenAnsewers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnsewers.length; i++) {
      summary.add({
        //more about this in https://github.com/dart-lang/language/blob/main/accepted/2.3/control-flow-collections/feature-specification.md
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnsewers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You got $numCorrectQuestions out of $numTotalQuestions questions right!',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30,),
           
            QuestionsSummary(summaryData),
            
            const SizedBox(
              height: 30,
            ),

            //buttons
            OutlinedButton.icon(
              onPressed: onrestartQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.restart_alt_outlined),
              label: const Text(
                'Restart Quiz',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
              onPressed: onbackhome,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.home),
              label: const Text(
                'Back to Home',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
