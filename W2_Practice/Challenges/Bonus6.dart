class Distance {
  final double _cms;
  // Named constructor
  Distance.cms(double cms) : _cms = cms;
  Distance.meters(double meters) : _cms = meters * 100;
  Distance.kms(double kms) : _cms = kms * 100000;

  //Getter
  double get cms => _cms;
  double get meters => _cms / 100;
  double get kms => _cms / 100000;

  // Operator overloading
  Distance operator +(Distance other) {
    return Distance.cms(_cms + other._cms);
  }
}
void main() {
  Distance d1 = Distance.kms(3.4);
  Distance d2 = Distance.meters(1000);

  print((d1 + d2).kms);
}
