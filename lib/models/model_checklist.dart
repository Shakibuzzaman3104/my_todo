class ModelCheckList {

  int id;
  DateTime dateTime;
  String title;
  int reminder;
  DateTime reminderDatetime;

  ModelCheckList(
      {this.id,
      this.dateTime,
      this.title,
      this.reminder=0,
      this.reminderDatetime});

  ModelCheckList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dateTime = json['datetime'];
    title = json['title'];
    reminder = json['reminder'];
    reminderDatetime = json['reminderDatetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['datetime'] = this.dateTime;
    data['title'] = this.title;
    data['reminder'] = this.reminder;
    data['reminder_datetime'] = this.reminderDatetime;
    return data;
  }

}
