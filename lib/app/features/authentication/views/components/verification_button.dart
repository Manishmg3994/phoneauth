part of authentication_view;

class _VerificationButton extends GetView<AuthenticationController> {
  const _VerificationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => ElevatedButton(
        onPressed: () {
          controller.goToHome();
        },
        child: Text("Verify"))); //hardcoded but we will change this
  }
}
