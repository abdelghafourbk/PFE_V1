class UserModel {
  String? uid;
  String? email;
  // String? password;
  String? firstName;
  String? lastName;
  String? photoURL;
  String? type;

  UserModel(
      {this.uid,
      this.email,
      this.firstName,
      this.lastName,
      this.photoURL,
      this.type});

  //recieving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      photoURL: map['photoURL'],
      type: map['type'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'photoURL': photoURL,
      'type': type,
    };
  }
}
