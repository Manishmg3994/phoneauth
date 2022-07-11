part of authentication_view;

class _ResendButton extends GetView<AuthenticationController> {
  const _ResendButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Didn't Received the Code ?"),
        Obx(
          () => TextButton(
            onPressed: (controller.isCanResendCode.value)
                ? () => controller.goToHome() //controller.verifyPhoneNumber()
                : null,
            child: Text((controller.durationCountdown.value) > 0
                ? "Resend (${controller.durationCountdown.value})"
                : "Resend"),
          ), //hardcoded but we will change this in backend video
        )
      ],
    );
  }
}
