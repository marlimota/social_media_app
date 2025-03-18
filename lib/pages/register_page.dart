import 'package:flutter/material.dart';
import 'package:social_media_app/components/custom_button.dart';

import '../components/custom_textfield.dart';

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmePasswordController =
      TextEditingController();

  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 25),
              Text('SOCIAL MEDIA', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 50),
              CustomTextField(
                hintText: 'Nome',
                obscureText: false,
                controller: userNameController,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                hintText: 'Email',
                obscureText: false,
                controller: emailController,
              ),
              const SizedBox(height: 10),

              CustomTextField(
                hintText: 'Senha',
                obscureText: true,
                controller: passwordController,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                hintText: 'Confirmar senha',
                obscureText: true,
                controller: confirmePasswordController,
              ),

              const SizedBox(height: 30),
              CustomButton(text: 'Criar Conta', onTap: register),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Já possui conta? '),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      'Clique aqui',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
