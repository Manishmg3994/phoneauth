part of login_view;


class _PhoneNumber extends GetView<LoginController> {
  const _PhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Form(key: controller.formKey,child:TextFormField(controller: controller.phoneNumber,
    keyboardType: TextInputType.phone,
    validator: (value){
      if(value== null || value.trim()== "")return;
      return null;
    },
    decoration:InputDecoration(prefixIcon: Icon(Icons.phone,color:Colors.grey,),hintText: "Phone Number with Country Code(+91)") //choose your own decoration even you can choode square type decoration having a box in front which show country code but in my case both country code and phone number will be in same input box
    ,) )
    ;
  }
}