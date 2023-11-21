import 'package:flutter/material.dart';
import 'package:trilhaapp/shared/widgets/app_images.dart';

class ImageAssetsPage extends StatefulWidget {
  const ImageAssetsPage({super.key});

  @override
  State<ImageAssetsPage> createState() => _ImageAssetsPageState();
}

class _ImageAssetsPageState extends State<ImageAssetsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppImages.user1, height: 50),
        Image.asset(AppImages.user2, height: 50),
        Image.asset(AppImages.user3, height: 50),
        Image.asset(AppImages.pais1, width: double.infinity),
        Image.asset(AppImages.pais2, height: 50),
        Image.asset(AppImages.pais3, height: 50),
      ],
    );
  }
}
