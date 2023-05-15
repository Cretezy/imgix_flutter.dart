import 'package:imgix_flutter/imgix_flutter.dart';
import 'package:imgix/imgix.dart';
import 'package:flutter/material.dart';

main() {
  final url = "https://assets.imgix.net/examples/treefrog.jpg";
  final options = ImgixOptions(
    width: 300,
    height: 500,
    format: ImgixFormat.jpg,
    quality: 75,
    auto: [ImgixAuto.compress],
  );

  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: ImgixImage(
          url,
          options: options,
        ),
      ),
    ),
  ));
}
