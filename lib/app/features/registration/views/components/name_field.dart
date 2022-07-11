part of registration_view;

class _NameField extends GetView<RegistrationController> {
  const _NameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      maxLength: 25,
      controller: controller.name,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      autofillHints: [AutofillHints.name],
      validator: (value) {
        if (value == null || value.trim() == "") return "";
        return null;
      },
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          hintText: "Name"),
    );
  }
}
