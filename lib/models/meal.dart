import 'dart:convert';

class Meal {
  String? tittle;
  DateTime? shift;
  List<Person>? persons = [];
  Meal({
    this.tittle,
    this.shift,
    this.persons,
  });

  Map<String, dynamic> toMap() {
    return {
      'tittle': tittle,
      'shift': shift,
      'persons': persons,
    };
  }

  factory Meal.fromMap(Map<String, dynamic> map) {
    return Meal(
      tittle: map['Name'],
      shift: DateTime.tryParse(map['workshift']),
      persons: [],
    );
  }

  String toJson() => json.encode(toMap());

  factory Meal.fromJson(String source) =>
      Meal.fromMap(json.decode(utf8.decode(source.codeUnits)));

  @override
  String toString() =>
      'Meal(tittle: $tittle, shift: $shift, persons: $persons)';
}

class Person {
  String? tittle;
  double? units;
  int? duration;
  bool? isActive;
  Person({
    this.tittle,
    this.units,
    this.duration,
    this.isActive,
  });

  Person copyWith({
    String? tittle,
    double? units,
    int? duration,
    bool? isActive,
  }) {
    return Person(
      tittle: tittle ?? this.tittle,
      units: units ?? this.units,
      duration: duration ?? this.duration,
      isActive: isActive ?? this.isActive,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'tittle': tittle,
      'units': units,
      'duration': duration,
      'isActive': isActive,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      tittle: map['tittle'],
      units: map['units'],
      duration: map['duration'],
      isActive: map['isActive'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) => Person.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Person(tittle: $tittle, units: $units, duration: $duration, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Person &&
        other.tittle == tittle &&
        other.units == units &&
        other.duration == duration &&
        other.isActive == isActive;
  }

  @override
  int get hashCode {
    return tittle.hashCode ^
        units.hashCode ^
        duration.hashCode ^
        isActive.hashCode;
  }
}

class Telmsour extends Meal {}
