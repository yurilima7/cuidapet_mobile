
part of '../login_page.dart';

class _LoginForm extends StatefulWidget {
  const _LoginForm();

  @override
  State<_LoginForm> createState() => __LoginFormState();
}

class __LoginFormState extends State<_LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form (
      child: Column(
        children: [
          CuidapetTextformField(label: 'Login'),
          const SizedBox(
            height: 20,
          ),
          CuidapetTextformField(
            label: 'Senha',
            obscureText: true,
          ),
          const SizedBox(
            height: 20,
          ),
          CuidapetDefaultButton(
            label: 'Entrar',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
