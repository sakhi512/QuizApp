import 'package:flutter/material.dart';
import 'package:untitled4/Question.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizApp(),
    );
  }
}
class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();

}
List<Icon> icons=[];
class _QuizAppState extends State<QuizApp> {

List<Question> QuestionBulk=[
  Question('Some cats are actually allergic to humans', true),
  Question('You can lead a cow down stairs but not up stairs', false),
  Question('A slug\'s blood is green.', false),
  Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', false),
  Question('It is illegal to pee in the Ocean in Portugal.', true),
  Question('No piece of square dry paper can be folded in half more than 7 times.', true),
  Question(   'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.'
  , false),
  Question(  'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
   false),
  Question( 'The total surface area of two human lungs is approximately 70 square metres.', true),
  Question('Google was originally called \"Backrub\".', true),
  Question(  'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
   false),
  Question( 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
   false),

];
 // List<String> Questions=[ 'Some cats are actually allergic to humans',
 //   'You can lead a cow down stairs but not up stairs.',
 //   'Approximately one quarter of human bones are in the feet.',
 //   'A slug\'s blood is green.',
 //   'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
 //   'It is illegal to pee in the Ocean in Portugal.',
 //
 //   'No piece of square dry paper can be folded in half more than 7 times.',
 //
 //
 //   'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
 //
 //
 //   'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
 //
 //
 //   'The total surface area of two human lungs is approximately 70 square metres.',
 //
 //   'Google was originally called \"Backrub\".',
 //
 //   'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
 //
 //
 //   'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',];

 // var answers=[true,false,true,false,true,false,true,false,true,false,true,false,true];

  var nextQuestion=0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("Quiz App",
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 20,
      //   ),),
      // ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 4,
              child: Center(
                child: Container(

                  margin: EdgeInsets.fromLTRB(0, 170, 0, 170),
                  child: Text(QuestionBulk[nextQuestion].question,

                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ) ,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(

                margin:EdgeInsets.fromLTRB(0, 0, 0, 10),

                width: double.infinity,
                height: 70,
                child: MaterialButton(

                  color: Colors.greenAccent,
                    onPressed: (){
                      setState(() {
                        if(nextQuestion>=11){
                          icons.clear();
                          nextQuestion=0;
                        }
                        bool getanswer=QuestionBulk[nextQuestion].answer;
                        if(getanswer==true) {
                          nextQuestion++;
                          icons.add(Icon(Icons.check, color: Colors.green,));
                        }
                        else{
                          nextQuestion++;
                          icons.add(Icon(Icons.close, color: Colors.red,));
                        }
                      });
                    },
                    // style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.lightGreenAccent)),
                    child: Text("TRUE")
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),

                width: double.infinity,
                height: 70,
                child: MaterialButton(
                color: Colors.red,
                    onPressed: (){
                      setState(() {

                        if(nextQuestion>=11){
                          icons.clear();
                          nextQuestion=0;
                        }
                        bool getanswer=QuestionBulk[nextQuestion].answer;
                        if(getanswer==false) {
                          nextQuestion++;
                          icons.add(Icon(Icons.check, color: Colors.green,));
                        }
                        else{
                          nextQuestion++;
                          icons.add(Icon(Icons.close, color: Colors.red,));
                        }
                      });

                    },
                    // style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.red)),
                    child: Text("FALSE")
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                child: Row(

                  children: icons,
                ),
              ),
            )
          ],

        ),
      ),

    );
  }
}

