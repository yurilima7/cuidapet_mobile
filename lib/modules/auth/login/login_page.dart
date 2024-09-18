import 'package:cuidapet_mobile/app/core/ui/widgets/cuidapet_textform_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final testeEC = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        child: Form(
          key: formKey,
          
          child: Column(
            children: [
              CuidapetTextformField(
                label: 'Login',
                obscureText: true,
                controller: testeEC,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Valor obrigatório';
                  }

                  return null;
                },
              ),

              ElevatedButton(
                onPressed: () {
                  formKey.currentState?.validate();

                  debugPrint(testeEC.text);
                },
                child: const Text('Validador'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
