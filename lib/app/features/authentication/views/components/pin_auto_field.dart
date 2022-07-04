//TODO
part of authentication_view;

class _PinAutoField extends GetView<AuthenticationController> {
  const _PinAutoField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.formKey,
        child: Container(
            child: Theme(
                data: ThemeData(
                    inputDecorationTheme: InputDecorationTheme(
                        fillColor: Theme.of(context).canvasColor)),
                child: PinFieldAutoFill(
                    //TODO
                    controller: controller.otp,
                    codeLength: 6,
                    decoration: BoxLooseDecoration(
                        strokeColorBuilder:
                            FixedColorBuilder(Colors.grey[300]!),
                        bgColorBuilder: FixedColorBuilder(Colors.grey[300]!),
                        gapSpace: 10)))));
  }
}
