part of login_view;

class _PhoneNumberField extends GetView<LoginController> {
  const _PhoneNumberField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
   

    return Form(
      key: controller.formKey,
      child: TextFormField(
        controller: controller.phoneNumber,
        keyboardType: TextInputType.phone,
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
            hintText: "Phone Number(Use +91)"),
      ),
    );
  }
}
