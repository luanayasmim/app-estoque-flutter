import 'package:flutter/material.dart';
import 'package:invenmanager/global/app_color.dart';
import 'package:invenmanager/pages/user/login/login_page.dart';
import 'package:invenmanager/utils/user_validator.dart';
import 'package:invenmanager/widget/border_button.dart';
import 'package:invenmanager/widget/custom_button.dart';
import 'package:invenmanager/widget/custom_text_form_field.dart';

class RecoverPasswordPage extends StatefulWidget {
  const RecoverPasswordPage({Key? key}) : super(key: key);

  @override
  _RecoverPasswordPageState createState() => _RecoverPasswordPageState();
}

class _RecoverPasswordPageState extends State<RecoverPasswordPage> {
  bool isVisible = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperação de senha'),
        centerTitle: true,
        backgroundColor: AppColor.gray_800,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Visibility(
                  visible: isVisible,
                  child: Column(
                    children: [
                      const SizedBox(height: 24),
                      const Text(
                        'Por favor, informe o seu usuário para continuar:',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor.gray_200,
                        ),
                      ),
                      const SizedBox(height: 24),
                      CustomTextFormField(
                        label: 'Usuário',
                        hintText: 'john.doe',
                        validator: UserValidator.validateUserName,
                      ),
                      const SizedBox(height: 24),
                      CustomButton(
                        label: 'Continuar',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          }
                        },
                      )
                    ],
                  ),
                ),
                Visibility(
                  visible: !isVisible,
                  child: Column(
                    children: [
                      const SizedBox(height: 24),
                      const Text(
                        'Qual meio devemos utilizar para resetar a sua senha?',
                        style:
                            TextStyle(fontSize: 16, color: AppColor.gray_200),
                      ),
                      const SizedBox(height: 24),
                      BorderButton(
                        label: 'Email',
                        icon: Icons.email_outlined,
                        onPressed: () {
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //     const NotificationCard(
                          //             message:
                          //                 'Caso esse usuário exista na plataforma um email será enviado com a nova senha :)')
                          //         as SnackBar);

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                      ),
                      const SizedBox(height: 24),
                      BorderButton(
                        label: 'SMS',
                        icon: Icons.sms_outlined,
                        onPressed: () {
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //     const NotificationCard(
                          //             message:
                          //                 'Caso esse usuário exista na plataforma um SMS será enviado com a nova senha :)')
                          //         as SnackBar);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}