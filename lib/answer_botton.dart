import 'package:flutter/material.dart';



class  AnwserButton extends StatelessWidget{
const AnwserButton({super.key, 
required this.answerText,
required this.onTap,
});

    final String answerText;  
    final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(05),
      child: ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                
                 padding: const EdgeInsets.symmetric(
                 vertical: 10,
                 horizontal: 40,
                 ),
                 backgroundColor:  const Color.fromARGB(255, 218, 168, 6), 
                 foregroundColor: Colors.white,
                 shape: RoundedRectangleBorder(   
                  borderRadius: BorderRadius.circular(30),
                  ),
      
              ),
              child: 
              Text(answerText, textAlign: TextAlign.center,),
            ),
    );
  }
}