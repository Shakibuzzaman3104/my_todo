class ModelCheckListItems {
  int lId;
  int id;
  String description;
  int checked;

  ModelCheckListItems({this.lId, this.id, this.description, this.checked=0});

  ModelCheckListItems.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    lId = json['l_id'];
    description = json['description'];
    checked = json['checked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['l_id'] = this.lId;
    data['description'] = this.description;
    data['checked'] = this.checked;
    return data;
  }

}