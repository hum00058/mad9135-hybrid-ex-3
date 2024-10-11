class Students {
  List<Map<String, String>> people;

  Students(this.people);

  void sort(String field) {
    people.sort((a, b) => a[field]!.compareTo(b[field]!));
  }

  void output() {
    for (var person in people) {
      print(
          'Name: ${person['first']} ${person['last']}, Email: ${person['email']}');
    }
  }

  void plus(Map<String, String> person) {
    people.add(person);
  }

  void remove(Map<String, String> field) {
    if (field.length > 2) {
      return print('Please provide only one field to remove');
    }
    if (field.containsKey('first')) {
      people.removeWhere((person) => person['first'] == field['first']);
    } else if (field.containsKey('last')) {
      people.removeWhere((person) => person['last'] == field['last']);
    } else if (field.containsKey('email')) {
      people.removeWhere((person) => person['email'] == field['email']);
    } else {
      return print('Please provide a valid field to remove');
    }
  }
}
