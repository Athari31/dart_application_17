import 'dart:io';

void main() {
  List<double> grades = [];
  
  for (int i = 1; i <= 5; i++) {
    stdout.write("Enter the grade for subject $i: ");
    double grade = double.parse(stdin.readLineSync() ?? '0');
    grades.add(grade);
  }
  
  double total = calculateTotal(grades);
  String grade = calculateGrade(total);
  
  print("Total marks: $total");
  print("Grade: $grade");
}

double calculateTotal(List<double> grades) {
  double total = 0;
  for (double grade in grades) {
    total += grade;
  }
  return total;
}

String calculateGrade(double total) {
  if (total >= 90) {
    return "A";
  } else if (total >= 80) {
    return "B";
  } else if (total >= 70) {
    return "C";
  } else if (total >= 60) {
    return "D";
  } else {
    return "F";
  }
}

