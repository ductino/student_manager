import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_manager/providers/student_provider.dart';
import 'package:student_manager/screens/student_list_screen.dart';

import '../mocks/mock_storage_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Student list screen smoke test', (tester) async {
    final storage = MockStorageService();
    await storage.init();

    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => StudentProvider(storage),
        child: const MaterialApp(home: StudentListScreen()),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.byType(TextField), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}
