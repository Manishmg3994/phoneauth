part of registration_view;


class _NameField extends GetView<RegistrationController> {
  const _NameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Form(key: controller.formKey,child:TextFormField(controller: controller.name,
    keyboardType: TextInputType.name,
    validator: (value){
      if(value== null || value.trim()== "")return;
      return null;
    },
    decoration:InputDecoration(prefixIcon: Icon(Icons.phone,color:Colors.grey,),hintText: "Name") //choose your own decoration even you can choode square type decoration having a box in front which show country code but in my case both country code and phone number will be in same input box
    ,) )
    ;
  }
}