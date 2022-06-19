class DestinationModel {
  String? name;
  String? image;
  String? description;

  DestinationModel({this.name, this.image, this.description});

  //recieving data from server
  factory DestinationModel.fromMap(map) {
    return DestinationModel(
      name: map['name'],
      image: map['image'],
      description: map['description'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'description': description,
    };
  }

  static Set<DestinationModel> fromJson(Map<String, dynamic> json) => {
        DestinationModel(
            name: json['name'],
            image: json['image'],
            description: json['description'])
      };
}
