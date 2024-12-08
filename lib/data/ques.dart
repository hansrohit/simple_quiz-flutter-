import 'package:basic3/quizquestions.dart';

const questions = [
  QuizQuestions(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestions('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestions(
      'Which of the following is used to manage the state of a Flutter application?',
      ['setState', 'Scaffold', 'Navigator', 'Column']),
  QuizQuestions(
      'Which widget in Flutter is used to display an image from the network?',
      ['Image.network', 'Image.asset', 'Image.file', 'Image.provider']),
  QuizQuestions(
      'What is the default main axis alignment of a Column widget in Flutter?',
      [
        'MainAxisAlignment.top',
        'MainAxisAlignment.start',
        'MainAxisAlignment.center',
        'MainAxisAlignment.end'
      ]),
  QuizQuestions(
      'What is the primary purpose of the FutureBuilder widget in Flutter?', [
    'To manage asynchronous data and display results',
    'To display a loading spinner',
    'To animate widgets',
    'To create custom layouts'
  ]),
  QuizQuestions(
      'Which of the following packages is commonly used for handling HTTP requests in Flutter?',
      ['provider', 'http', 'shared_preferences', 'sqflite']),
  QuizQuestions(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestions(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestions(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestions(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];
