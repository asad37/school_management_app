class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignDate,
      this.lastDate, this.status);
}

List<AssignmentData> assignment = [
  AssignmentData('Assembly Language', 'Assignment 2', '17 Nov 2023', '15  2023',
      'Pending'),
  AssignmentData('Distribution Computing', 'bohr theory', '11 Nov 2021',
      '20 Nov 2021', 'Submitted'),
  AssignmentData('Chemistry', 'Organic Chemistry', '21 Oct 2021', '27 Oct 2021',
      'Not Submitted'),
  AssignmentData('Multivariable Calculas', 'Algebra', '17 Sep 2021',
      '30 Sep 2021', 'Pending'),
  AssignmentData('Communication Skills', 'Algebra', '17 Sep 2021',
      '30 Sep 2021', 'Pending'),
  AssignmentData(
      'Data Structure', 'Algebra', '17 Sep 2021', '30 Sep 2021', 'Pending'),
  AssignmentData(
      'Network Security', 'Algebra', '17 Sep 2021', '30 Sep 2021', 'Pending'),
];
