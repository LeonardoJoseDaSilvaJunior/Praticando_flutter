import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    String text = emailController.text;

    void onChange(String text) {
      print(text);
    }

    void onSubmit(String text) {
      print(text);
    }

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            controller: emailController,
            decoration: const InputDecoration(
              labelText: 'E-mail',
            ),
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Color(0xff7a1bba),
            ),
            onChanged: onChange,
            onSubmitted: onSubmit,
          ),
        ),
      ),
    );
  }
}
