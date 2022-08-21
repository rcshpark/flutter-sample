// import 'package:example/model/api_adaptor.dart';
// import 'package:example/screen/quiz.dart';
// import 'package:example/screen/quiz_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:example/model/api_adaptor.dart';

// class QuizHome extends StatefulWidget {
//   const QuizHome({Key? key}) : super(key: key);

//   @override
//   State<QuizHome> createState() => _QuizHomeState();
// }

// class _QuizHomeState extends State<QuizHome> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   List<Quiz> quizs = [];
//   bool isLoading = false;

//   _fetchQuizs() async {
//     setState(() {
//       isLoading = true;
//     });
//     final response = await http
//         .get(Uri.parse('https://drf-quiz-test.herokuapp.com/quiz/3/'));
//     if (response.statusCode == 200) {
//       setState(() {
//         quizs = parseQuizs(utf8.decode(response.bodyBytes)).cast<Quiz>();
//         isLoading = false;
//       });
//     } else {
//       throw Exception('fail');
//     }
//   }

//   // List<Quiz> quizs = [
//   //   Quiz.fromMap({
//   //     'title': 'test',
//   //     'candidates': ['a', 'b', 'c', 'd'],
//   //     'answer': 0
//   //   }),
//   //   Quiz.fromMap({
//   //     'title': 'test',
//   //     'candidates': ['a', 'b', 'c', 'd'],
//   //     'answer': 0
//   //   }),
//   //   Quiz.fromMap({
//   //     'title': 'test',
//   //     'candidates': ['a', 'b', 'c', 'd'],
//   //     'answer': 0
//   //   })
//   // ];
//   @override
//   Widget build(BuildContext context) {
//     Size screenSize = MediaQuery.of(context).size;
//     double width = screenSize.width;
//     double height = screenSize.height;

//     return SafeArea(
//       child: Scaffold(
//         key: _scaffoldKey,
//         appBar: AppBar(
//           title: const Text('test'),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               _fetchQuizs().whenComplete(() {
//                 return Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => QuizScreen(quizs: quizs),
//                   ),
//                 );
//               });
//             },
//             child: const Text('quiz'),
//           ),
//         ),
//       ),
//     );
//   }
// }
