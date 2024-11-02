import 'package:flutter/material.dart';
import 'package:invenmanager/global/app_color.dart';
import 'package:invenmanager/pages/home_page.dart';
import 'package:invenmanager/pages/create_account_page.dart';
import 'package:invenmanager/pages/recover_password_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.gray_900,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              Image.asset(
                'lib/assets/logo-light.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 52),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Usuário',
                  labelStyle: TextStyle(color: AppColor.gray_200),
                  filled: true,
                  fillColor: AppColor.gray_700,
                  hintText: 'john.doe',
                  hintStyle: TextStyle(color: AppColor.gray_250),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: AppColor.gray_250),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide.none,
                  ),
                  errorStyle: TextStyle(color: AppColor.red),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.red),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.red,
                      width: 2.0,
                    ),
                  ),
                ),
                style: const TextStyle(color: AppColor.white),
                cursorColor: AppColor.yellow,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor informe o seu usuário';
                  } else if (value.length < 3 || value.length > 30) {
                    return 'Usuário inválido';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  labelStyle: TextStyle(color: AppColor.gray_200),
                  filled: true,
                  fillColor: AppColor.gray_700,
                  hintText: '********',
                  hintStyle: TextStyle(color: AppColor.gray_250),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: AppColor.gray_250),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide.none,
                  ),
                  errorStyle: TextStyle(color: AppColor.red),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.red),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.red,
                      width: 2.0,
                    ),
                  ),
                ),
                style: const TextStyle(color: AppColor.white),
                cursorColor: AppColor.yellow,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor informe a sua senha';
                  } else if (value.length < 8) {
                    return 'Senha inválida';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RecoverPassword()),
                  );
                },
                child: const Text(
                  'Esqueci a minha senha',
                  style: TextStyle(color: AppColor.gray_200),
                ),
              ),
              const SizedBox(height: 52),
              ElevatedButton.icon(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
                    );
                  }
                },
                icon: const Icon(Icons.login),
                label: const Text(
                  'Entrar',
                  style: TextStyle(color: AppColor.gray_800),
                ),
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  backgroundColor: AppColor.yellow,
                  minimumSize: const Size(350, 52),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.login, color: Colors.white),
                label: const Text(
                  'Entrar com o Google',
                  style: TextStyle(color: AppColor.white),
                ),
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  backgroundColor: AppColor.red_500,
                  minimumSize: const Size(350, 52),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateAccountPage()),
                  );
                },
                child: const Text(
                  'Criar uma nova conta',
                  style: TextStyle(color: AppColor.gray_200),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
