part of authentication_view;

class _ResendButton extends GetView<AuthenticationController> {
  const _ResendButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Didn't Received the Code ?"),
        Obx(() => TextButton(
                onPressed: () {},
                //Todo (controller.),
                child: Text(
                    "resend")) //hardcoded but we will change this in backend video

            )
      ],
    );
  }
}
