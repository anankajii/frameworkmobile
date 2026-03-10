import 'package:flutter/material.dart';
import 'package:app_test/features/auth/auth_service.dart';
import 'package:app_test/features/acara/screens/acara_list_screen.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text("Login with Google"),
          onPressed: () async {

            final user = await AuthService().signInWithGoogle();

            if (user != null) {

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => const AcaraListScreen(),
                ),
              );

            }

          },
        ),
      ),
    );

  }
}