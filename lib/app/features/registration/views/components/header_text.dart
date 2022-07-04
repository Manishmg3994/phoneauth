part of registration_view;




class _HeaderText extends StatelessWidget {
  const _HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Register Now",style: Theme.of(context).textTheme.headline5,),
      const SizedBox(height: 5,),
      const Text("Please enter your Phone Number and Name ")],
    );
  }
}