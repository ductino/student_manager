import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_manager/services/storage_service.dart';
import 'package:student_manager/providers/student_provider.dart';
import 'package:student_manager/screens/student_list_screen.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Student list screen smoke test', (tester) async {
    final storage = StorageService();
    await storage.init(); // đảm bảo localStorage đã khởi tạo

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
