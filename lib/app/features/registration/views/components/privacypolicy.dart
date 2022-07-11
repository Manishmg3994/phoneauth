part of registration_view;

class _PrivacyPolicy extends GetView<RegistrationController> {
  const _PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "* Agree to",
          style: Theme.of(context).textTheme.overline,
        ),
        TextButton(
          onPressed:
              // ()
              // {
              //   controller.getinital();
              // },
              _launchURL,
          child: Text(
            'Privacy Policy',
            style: TextStyle(color: Colors.green, fontSize: 10),
          ),
        )
      ],
    );
  }
}

Future<void> _launchURL() async {
  const String _url =
      'https://github.com/Manishmg3994/privacypolicy/blob/main/README.md';

  ///TODO privacy policy page
  if (await canLaunchUrl(Uri.parse(_url))) {
    await launchUrl(
      Uri.parse(_url),
      // forceSafariVC: true,
      // forceWebView: false,
      // enableJavaScript: true
    ); //implement forceSafariVC for ios
  }
}
