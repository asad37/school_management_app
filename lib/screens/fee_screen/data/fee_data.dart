class FeeData {
  final String receiptNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  FeeData(this.receiptNo, this.month, this.date, this.paymentStatus,
      this.totalAmount, this.btnStatus);
}

List<FeeData> fee = [
  FeeData('90271', 'November', '8 Nov 2021', 'Pending', '18000', 'PAY NOW'),
  FeeData('90470', 'September', '6 Sep 20222', 'Paid', '19500', 'DOWNLOAD'),
  FeeData('908859', 'August', '18 Aug 2023', 'Paid', '23300', 'DOWNLOAD'),
];
