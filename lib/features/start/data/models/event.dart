class Event {
  String? id;
  String? location;
  String? name;
  String? time;
  String? description;

  Event({this.id, this.location, this.name, this.time, this.description});

  Event.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    location = json['location'];
    name = json['name'];
    time = json['time'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['location'] = location;
    data['name'] = name;
    data['time'] = time;
    data['description'] = description;
    return data;
  }
}

