class PaymentModel {
  String? id;
  String? departure;
  String? arrival;
  String? timeOfDeparture;
  String? timeOfArrival;
  int? price;
  String? duration;
  String? date;
  String? time;
  String? destination;

  PaymentModel({
    this.id,
    this.departure,
    this.arrival,
    this.timeOfDeparture,
    this.timeOfArrival,
    this.price,
    this.duration,
    this.date,
    this.time,
    this.destination,
  });

  //recieving data from server
  factory PaymentModel.fromMap(map) {
    return PaymentModel(
      id: map['id'],
      departure: map['departure'],
      arrival: map['arrival'],
      timeOfDeparture: map['timeOfDeparture'],
      timeOfArrival: map['timeOfArrival'],
      price: map['price'],
      duration: map['duration'],
      date: map['date'],
      time: map['time'],
      destination: map['destination'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'departure': departure,
      'arrival': arrival,
      'timeOfDeparture': timeOfDeparture,
      'timeOfArrival': timeOfArrival,
      'price': price,
      'duration': duration,
      'date': date,
      'time': time,
      'destination': destination,
    };
  }
}
