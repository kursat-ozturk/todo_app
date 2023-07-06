import 'package:flutter/material.dart';
import 'package:todo_app/pages/home_page.dart';

class ToDoSplash extends StatelessWidget {
  const ToDoSplash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const HomePage(),
      ));
    });

    return Scaffold(
      backgroundColor: const Color(0xff0D0D16),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/todo_logo.png",
              width: 500,
              height: 500,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                strokeWidth: 5,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
