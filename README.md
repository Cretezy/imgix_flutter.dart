# Imgix Flutter

An [Imgix](https://imgix.com) Flutter wrapper to embed Imgix URLs with options easily. Uses [imgix](https://pub.dartlang.org/packages/imgix).

## Install
Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  imgix_flutter: ^0.1.0
```

## Usage

[API Docs](https://pub.dartlang.org/documentation/imgix_flutter/latest)

```dart
import 'package:imgix_flutter/imgix_flutter.dart';
import 'package:imgix/imgix.dart';
import 'package:flutter/material.dart';

main() {
  final url = "https://test.imgix.net/test.png";
  final options = ImgixOptions(
    width: 100,
    height: 200,
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
```

## Features and bugs

> Some options are missing, please report them to [`imgix`'s issue tracker](https://github.com/Cretezy/imgix.dart).

Please file feature requests and bugs at the [issue tracker](https://github.com/Cretezy/imgix_flutter.dart).
