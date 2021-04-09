import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DataInput extends StatelessWidget {
  final String asset, data, label;
  const DataInput(
      {Key? key, required this.asset, required this.data, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //FIXME : SVG workaround for web
        SvgPicture.asset(
          asset,
          semanticsLabel: asset.substring(12),
          color: Color(0xFF20CAD1),
          fit: BoxFit.contain,
        ),
        SizedBox(height: 4),
        Row(children: [
          Text(data, style: Theme.of(context).textTheme.headline5),
          Text(label, style: Theme.of(context).textTheme.subtitle1),
        ])
      ],
    );
  }
}
