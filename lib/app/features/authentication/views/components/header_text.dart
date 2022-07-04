part of authentication_view;

class _HeaderText extends GetView<AuthenticationController> {
  const _HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Verification Code",
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(
          height: 5,
        ),
        RichText(
          text:
              TextSpan(style: Theme.of(context).textTheme.bodyText2, children: [
            const TextSpan(text: "Please Enter The code Sent To"),
            TextSpan(
                text: "+9198xxxx3994",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontSize: 16))
          ]),
        )
      ],
    );
  }
}
