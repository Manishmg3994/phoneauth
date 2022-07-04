part of registration_view;

class _LoginButton extends GetView<RegistrationController> {
  const _LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already Have an Account ?"),
        TextButton(
            onPressed: () {
              controller.goToLoginScreen();
            },
            child: Text("Login"))
      ],
    );
  }
}
