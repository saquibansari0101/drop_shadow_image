import 'package:flutter/material.dart';

import 'package:drop_shadow_image/drop_shadow_image.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body:
          Center(
            child: DropShadowImage(
              offset: Offset(10,10),
              scale: 1,
              blurRadius: 10,
              borderRadius: 20,
              image: Image.asset('images/test.jpg',
                width: 300,),
            ),
          )
      ),
    );
  }
}
