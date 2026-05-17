enum TravelClass { economy, business, firstClass }

class Passenger {
  String name;
  int age;

  Passenger(this.name, this.age);
}

class TravelTicket {
  Passenger passenger;
  String destination;
  TravelClass travelClass;
  String? discountCode;

  TravelTicket(
    this.passenger,
    this.destination,
    this.travelClass, [
    this.discountCode,
  ]);
}

void main() {
  Passenger p1 = Passenger('Oudom', 25);

  TravelTicket ticket = TravelTicket(
    p1,
    'Paris',
    TravelClass.business,
    'CADT123',
  );
  print(ticket.passenger.name);
  print(ticket.destination);
  print(ticket.travelClass);
  print(ticket.discountCode);
}
