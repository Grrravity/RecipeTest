import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RecipePictureWidget extends StatelessWidget {
  final String imagePath;
  const RecipePictureWidget({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image(
        image: AssetImage(
          imagePath,
        ),
        fit: kIsWeb ? BoxFit.cover : BoxFit.fitWidth,
      ),
    );
  }
}
