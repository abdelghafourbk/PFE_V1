class SubscriptionModel {
  String? name;
  int? price;
  String? description;
  String? duration;
  List? tag;

  SubscriptionModel(
      {this.name, this.price, this.description, this.duration, this.tag});

  //recieving data from server
  factory SubscriptionModel.fromMap(map) {
    return SubscriptionModel(
      name: map['name'],
      price: map['price'],
      duration: map['duration'],
      tag: map['tag'],
      description: map['description'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'description': description,
      'duration': duration,
      'tag': tag,
    };
  }
}
