part of login_view;

class _IllustrationImage extends StatelessWidget {
  const _IllustrationImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.5,
      height: Get.height * 0.5,
      child: Lottie.asset(
        LottieConstant.login,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
