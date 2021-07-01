
Package for creating drop shadow effect of an image.

![Example ](https://raw.githubusercontent.com/lalitjarwal/shadowed_image/master/images/shadow%20snap.jpg)
## Installation

1. Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  drop_shadow_image: ^0.9.0
```
2. Import the package into your dart file:

```dart
import 'package:drop_shadow_image/drop_shadow_image.dart';
```
## Example

```dart
import 'dart:ui';

import 'package:drop_shadow_image/drop_shadow_lib.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shadowed Image Example'),
        ),
        // body: Center(
        //   child: DropShadowImage(
        //     image: Image.asset('assets/cat.png'),
        //   ),
        // ),
        body:
        Center(
          child: DropShadowImage(
            offset: Offset(10,10),
            scale: 1,
            blurRadius: 12,
            borderRadius: 20,
            image: Image.asset('assets/cat.png',
            width: 300,),
          ),
        )
      ),
    );
  }
}

```

## Properties of the lass

1. Key key
 
2. double scale  // Size to parent. 

3. Offset offset  // Position of shadow. Takes 2 arguments- first one (dx) for horizontal component and second (dy) for vertical component.

4. double blurRadius // Amount of blur in the shadow. 0 means no blur.

5. double borderRadius //  border radius of image

6. Image image (@required) // The image.

