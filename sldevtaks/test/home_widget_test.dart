import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sldevtaks/main.dart';
import 'package:sldevtaks/pages/home.dart';

// flutter test --update-goldens


void main(){
  testWidgets("Home", (WidgetTester tester) async{
    await tester.pumpWidget(MyApp());
    expect(find.text(' About'), findsOneWidget);
    // await expectLater(find.byType(Home), matchesGoldenFile("golden/home.png"),);
    final aboutButton = find.byType(ElevatedButton);
    await tester.tap(aboutButton);
    await tester.pumpAndSettle();
    expect(find.text('About Page'), findsOneWidget);
  });
}