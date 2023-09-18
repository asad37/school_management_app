class DataSheet {
  final int date;
  final String monthName;
  final String subjectName;
  final String dayName;
  final String time;

  DataSheet(
      this.date, this.monthName, this.subjectName, this.dayName, this.time);
}

List<DataSheet> dateSheet = [
  DataSheet(02, 'Sep', 'Assembly Language', 'Monday', '9:00am'),
  DataSheet(03, 'Sep', 'Distribution Computing', 'Tuesday', '10:00am'),
  DataSheet(04, 'Sep', 'Multivariable Calculas', 'Wednesday', '9:30am'),
  DataSheet(05, 'Sep', 'Communication Skills', 'Thursday', '11:00am'),
  DataSheet(06, 'Sep', 'Network Security', 'Friday', '9:00am'),
  DataSheet(09, 'Sep', 'Data Structure', 'Monday', '11:00am'),
];
