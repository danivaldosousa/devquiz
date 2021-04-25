import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/home_page.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/trophy.png'),
            ),
            SizedBox(
              height: 16,
            ),
            Text("Parabéns", style: AppTextStyles.heading40),
            Text("Você conclui ", style: AppTextStyles.body),
            Text("Gerenciamento de Estado ", style: AppTextStyles.bodyBold),
            Text("com 6 de 10 acertos.", style: AppTextStyles.body),
            SizedBox(
              height: 10,
            ),
            TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(AppColors.purple),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text("Conquistado!!"))
          ],
        ),
      ),
    );
  }
}
