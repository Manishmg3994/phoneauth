part of registration_view;

class _LocationField extends GetView<RegistrationController> {
  const _LocationField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.streetAddress,
      onTap: () async {
        var locationpermission = await Permission.location.status;
        if (!locationpermission.isGranted) {
          await Permission.location.request();
        }
      },
      controller: controller.location,
      maxLength: 250,
      autofillHints: [AutofillHints.postalAddress],
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.trim() == "") return "";
        return null;
      },
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.maps_home_work_rounded,
            color: Colors.grey,
          ),
          suffix: InkWell(
            onTap: () {
              controller.getLocation();
            },
            onLongPress: () {
              controller.getLocation();
              controller.locate();
            },
            child: Icon(
              Icons.my_location,
              size: 22.0,
              color: Colors.green[700], //todo size
            ),
          ),
          hintText: "Home Address"),
    );
  }
}
