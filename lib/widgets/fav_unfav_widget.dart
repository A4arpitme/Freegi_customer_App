import 'package:flutter/cupertino.dart';
import 'package:freegi_app/generated/assets.dart';

class FavUnfavWidget extends StatelessWidget {
  const FavUnfavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.imagesUnlike,
      width: 15,
      height: 15,
    );
  }
}
