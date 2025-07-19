import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:timedecode/main.dart'; // <-- Burası güncellendi!

void main() {
  testWidgets('TimeDecode metni ekranda doğru şekilde görüntüleniyor', (WidgetTester tester) async {
    // Uygulamamızı oluştur ve bir frame'i tetikle.
    await tester.pumpWidget(const MyApp());

    // 'TimeDecode' metninin varlığını doğrula.
    expect(find.text('TimeDecode'), findsOneWidget);

    
    expect(find.text('TimeDecode'), findsNWidgets(2));

    // İsteğe bağlı olarak, ana 'TimeDecode' metninin stilini doğrula.
    final Finder timeDecodeTextFinder = find.text('TimeDecode').last; // Body'deki metni al
    final Text timeDecodeTextWidget = tester.widget<Text>(timeDecodeTextFinder);

    expect(timeDecodeTextWidget.style?.fontSize, 32.0);
    expect(timeDecodeTextWidget.style?.fontWeight, FontWeight.bold);
    expect(timeDecodeTextWidget.style?.color, Colors.deepPurple);

    // Temel widget'ların varlığını doğrula.
    expect(find.byType(Center), findsOneWidget);
    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}