part of '../register_page.dart';

class _RegisterForm extends StatefulWidget {

  @override
  State<_RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CuidapetTextformField(label: 'Login',),
          const SizedBox(height: 20),
          CuidapetTextformField(label: 'Senha', obscureText: true,),
          const SizedBox(height: 20),
          CuidapetTextformField(label: 'Confirma Senha', obscureText: true,),
          const SizedBox(height: 20),
          CuidapetDefaultButton(label: 'Cadastrar', onPressed: (){},),
        ],
      ),
    );
  }
}
