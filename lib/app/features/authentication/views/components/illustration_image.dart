part of authentication_view;

class _IllustrationImage extends StatelessWidget {
  const _IllustrationImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: Lottie.asset(
        LottieConstant.auth,
        fit: BoxFit.fitWidth,
      ),
    );
    ;
  }
}
