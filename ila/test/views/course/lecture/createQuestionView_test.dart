import 'package:flutter_test/flutter_test.dart';
import 'package:ila/models/AuthModel.dart';
import 'package:ila/swagger/ilaApiClient.dart';
import 'package:ila/views/course/lecture/createQuestionView.dart';
import 'package:ila_swagger/api.dart';

import '../../../testHelper.dart';

void main() {
  MockNavigatorObserver navigation = MockNavigatorObserver();

  group('Student Questions Create View ', () {
    testWidgets('Texts', (WidgetTester tester) async {
      await tester.pumpWidget(TestHelper.buildPage(
          CreateQuestionView(
              _QuestionApi(),
              Lecture.fromJson({
                'id': 1,
              })),
          AuthModel(IlaApiClient())));
      final titleFinder = find.text('Create Question');
      final cancelFinder = find.text('Cancel');
      final postFinder = find.text('Post question');

      expect(titleFinder, findsOneWidget);
      expect(cancelFinder, findsOneWidget);
      expect(postFinder, findsOneWidget);
    });
  });
}

class _QuestionApi extends QuestionApi {}
