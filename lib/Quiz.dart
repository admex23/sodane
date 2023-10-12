import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz ',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionIndex = 0;
  int score = 0;
  int secondsRemaining = 10; // Adjust the duration for each question

  List<Question> questions = [
    Question(
      'What is the capital of France?',
      ['Paris', 'London', 'Berlin', 'Rome'],
      'Paris',
    ),
    Question(
      'What is the largest planet in our solar system?',
      ['Jupiter', 'Saturn', 'Mars', 'Earth'],
      'Jupiter',
    ),
    Question(
      'Who painted the Mona Lisa?',
      [
        'Leonardo da Vinci',
        'Pablo Picasso',
        'Vincent van Gogh',
        'Michelangelo'
      ],
      'Leonardo da Vinci',
    ),
    // Add more questions here
  ];

  late Timer timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (secondsRemaining > 0) {
          secondsRemaining--;
        } else {
          timer.cancel();
          goToNextQuestion();
        }
      });
    });
  }

  void checkAnswer(String selectedAnswer) {
    if (selectedAnswer == questions[currentQuestionIndex].correctAnswer) {
      setState(() {
        score++;
      });
    }
    timer.cancel();
    goToNextQuestion();
  }

  void goToNextQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
        secondsRemaining = questions[currentQuestionIndex]
            .duration; // Adjust the duration for the next question
        startTimer();
      } else {
        // Quiz completed, show results or navigate to another page
        // For example:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuizResultPage(
              score: score,
              totalQuestions: questions.length,
            ),
          ),
        );
      }
    });
  }

  void goToPreviousQuestion() {
    setState(() {
      if (currentQuestionIndex > 0) {
        currentQuestionIndex--;
        secondsRemaining = questions[currentQuestionIndex]
            .duration; // Adjust the duration for the previous question
        startTimer();
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('measure your knowledge '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Question ${currentQuestionIndex + 1}/${questions.length}',
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(
              questions[currentQuestionIndex].question,
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            ...questions[currentQuestionIndex].answerOptions.map((answer) {
              return ElevatedButton(
                onPressed: () => checkAnswer(answer),
                child: Text(answer),
              );
            }).toList(),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: goToPreviousQuestion,
                  child: const Text('Previous'),
                ),
                Text(
                  'Time Remaining: $secondsRemaining seconds',
                  style: const TextStyle(fontSize: 16.0),
                ),
                ElevatedButton(
                  onPressed: goToNextQuestion,
                  child: const Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Question {
  String question;
  List<String> answerOptions;
  String correctAnswer;
  int duration;

  Question(this.question, this.answerOptions, this.correctAnswer,
      {this.duration = 20});
}

class QuizResultPage extends StatelessWidget {
  final int score;
  final int totalQuestions;

  const QuizResultPage({required this.score, required this.totalQuestions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Quiz Completed!',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Score: $score/$totalQuestions',
              style: const TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
