import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:drop_shadow_image/drop_shadow_image.dart';

void main() {
  testWidgets('Widgets exist or not', (WidgetTester tester) async {
    final imageKey = Key('Imageisthere');
    final dropKey = Key('DropShadowImage widget is there');
    await tester.pumpWidget(DropShadowImage(
      image: Image.asset(
        'images/test.jpg',
        key: imageKey,
      ),
      key: dropKey,
    ));
    print('Testing DropShadowImage key\n');
    expect(find.byKey(dropKey), findsWidgets);
    print('Testing Image.asset keys\n');
    expect(find.byKey(imageKey), findsNWidgets(2));
  });
}
