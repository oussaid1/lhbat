import 'dart:convert';

import 'package:flutter/foundation.dart';

class Meal {
  String? tittle;
  List<Person>? persons = [];
  Meal({
    this.tittle,
    this.persons,
  });

  Meal copyWith({
    String? tittle,
    List<Person>? persons,
  }) {
    return Meal(
      tittle: tittle ?? this.tittle,
      persons: persons ?? this.persons,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'tittle': tittle,
      'persons': persons?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory Meal.fromMap(Map<String, dynamic> map) {
    return Meal(
      tittle: map['tittle'],
      persons: List<Person>.from(map['persons']?.map((x) => Person.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Meal.fromJson(String source) => Meal.fromMap(json.decode(source));

  @override
  String toString() => 'Meal(tittle: $tittle, persons: $persons)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Meal &&
        other.tittle == tittle &&
        listEquals(other.persons, persons);
  }

  @override
  int get hashCode => tittle.hashCode ^ persons.hashCode;
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
