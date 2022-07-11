part of registration_view;

class _PhoneNumberField extends GetView<RegistrationController> {
  const _PhoneNumberField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return TextFormField(
      controller: controller.phoneNumber,
      keyboardType: TextInputType.phone,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      autofillHints: [AutofillHints.telephoneNumber],
      validator: (value) {
        if (value == null || value.trim() == "")
          return "";
        else if (!value.contains('+')) return "";

        return null;
      },
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.phone,
            color: Colors.grey,
          ),
          hintText: "Phone Number (Use +91)"),
    );
  }
}
