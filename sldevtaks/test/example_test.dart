import 'package:flutter_test/flutter_test.dart';

void main() {

  test("Hello test", () {
    String hello = "hello SLDevtalks";
    expect(hello, "hello SLDevtalks");
  });

  group("Initial Test", () {

    setUpAll((){
      print("SetUp ALL");
    });

    setUp((){
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
      print("tearDown");
    });

    tearDownAll((){
      print("tearDown ALL");
    });

  });

}