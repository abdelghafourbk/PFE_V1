class UserModel {
  String? uid;
  String? email;
  // String? password;
  String? firstName;
  String? lastName;
  String? photoURL;

  UserModel(
      {this.uid, this.email, this.firstName, this.lastName, this.photoURL});

  //recieving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      photoURL: map['photoURL'],
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
    };
  }
}
