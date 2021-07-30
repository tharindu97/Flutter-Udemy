import 'package:flutter_test/flutter_test.dart';

void main() {

  test("Hello test", () {
    String hello = "hello SLDevtalks";
    expect(hello, "hello SLDevtalks");
  });

  group("Initial Test", () {

    setUpAll((){
      // ignore: avoid_print
      print("SetUp ALL");
    });

    setUp((){
      // ignore: avoid_print
      print("SetUp");
    });

    test("Hello test 1", () {
      String hello = "hello SLDevtalks";
      expect(hello, "hello SLDevtalks");
    });

    test("Hello test 2", () {
      String hello = "hello SLDevtalks";
      expect(hello, "hello SLDevtalks");
    });

    tearDown((){
      // ignore: avoid_print
      print("tearDown");
    });

    tearDownAll((){
      // ignore: avoid_print
      print("tearDown ALL");
    });

  });

}