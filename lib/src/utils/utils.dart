void printDivider() {
  print('--------------------------------');
}

void printTitle(String title) {
  print('### ${title} ###');
}

int calculateAge(int birthYear) {
  int currentYear = DateTime.now().year;
  int age = currentYear - birthYear;
  return age;
}