class NotificationModel {
  String? content;
  bool? isInformation;
  bool? isWarning;

  NotificationModel({this.content, this.isInformation, this.isWarning});

  //recieving data from server
  factory NotificationModel.fromMap(map) {
    return NotificationModel(
      content: map['content'],
      isInformation: map['isInformation'],
      isWarning: map['isWarning'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'content': content,
      'isInformation': isInformation,
      'isWarning': isWarning,
    };
  }
}
