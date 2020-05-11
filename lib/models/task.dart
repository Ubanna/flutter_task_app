class Task {
  final int id;
  final String name;
  final String vendor;
  final String amount;
  final String createdAt;
  final String updatedAt;

  Task({this.id, this.name, this.vendor, this.amount, this.createdAt, this.updatedAt});

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['id'],
      name: json['name'],
      vendor: json['vendor'],
      amount: json['amount'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}