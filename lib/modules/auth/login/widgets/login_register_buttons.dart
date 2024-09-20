part of "../login_page.dart";

class _LoginRegisterButtons extends StatelessWidget {
  const _LoginRegisterButtons();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      spacing: 10,
      runSpacing: 10,

      children: [
        RoundedButtonWithIcon(
          onTap: () {},
          width: .42.sw,
          color: const Color(0xFF3B5999),
          icon: CuidapetIcons.facebook,
          label: 'Facebook',
        ),
        
        RoundedButtonWithIcon(
          onTap: () {},
          width: .42.sw,
          color: const Color(0xFFEE5C2E),
          icon: CuidapetIcons.google,
          label: 'Google',
        ),

        RoundedButtonWithIcon(
          onTap: () {},
          width: .42.sw,
          color: context.primaryColorDark,
          icon: Icons.email,
          label: 'Cadastre-se',
        ),
      ],
    );
  }
}
