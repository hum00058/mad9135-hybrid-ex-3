import 'dart:convert';
import 'package:hybrid_exercise_3/students.dart';

void main(List<String> arguments) {
  var studentString = '''
[
  {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
  {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
  {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
  {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
]
''';

  List<Map<String, dynamic>> studentJson =
      List<Map<String, dynamic>>.from(jsonDecode(studentString));

  List<Map<String, String>> studentList = [];

  for (var person in studentJson) {
    studentList
        .add(person.map((key, value) => MapEntry(key, value.toString())));
  }

  var students = Students(studentList);

  students.remove({'first': 'Adesh'});
  students.plus({
    'first': 'John',
    'last': 'Doe',
    'email': 'alexhum@gmail.com',
  });
  students.sort('last');
  students.output();
}
