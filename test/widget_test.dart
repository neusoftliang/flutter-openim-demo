// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.


import 'package:rxdart/rxdart.dart';

void main() async{
 var pub = PublishSubject<int>();
 pub.sink.add(1);
 pub.stream.listen((event) {
   print('1-------$event');
  });
 pub.stream.listen((event) {
   print('2-------$event');
 });
 pub.sink.add(2);
}
