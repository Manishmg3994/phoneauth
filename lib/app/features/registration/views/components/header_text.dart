part of registration_view;

class _HeaderText extends StatelessWidget {
  const _HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Registration", style: Theme.of(context).textTheme.headline5),
        SizedBox(height: 5),
        Text(
          "Please enter your name, phone number and address to register",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
