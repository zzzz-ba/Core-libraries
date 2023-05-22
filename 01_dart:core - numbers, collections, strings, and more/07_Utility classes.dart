import 'dart:collection';

class Line implements Comparable<Line> {
  final int length;
  const Line(this.length);

  @override
  int compareTo(Line other) => length - other.length;
}

void main() {
  var short = const Line(1);
  var long = const Line(100);
  assert(short.compareTo(long) < 0);
}


class Person {
  final String firstName, lastName;

  Person(this.firstName, this.lastName);

  // Override hashCode using the static hashing methods
  // provided by the `Object` class.
  @override
  int get hashCode => Object.hash(firstName, lastName);

  // You should generally implement operator `==` if you
  // override `hashCode`.
  @override
  bool operator ==(Object other) {
    return other is Person &&
        other.firstName == firstName &&
        other.lastName == lastName;
  }
}

// void main() {
//   var p1 = Person('Bob', 'Smith');
//   var p2 = Person('Bob', 'Smith');
//   var p3 = 'not a person';
//   assert(p1.hashCode == p2.hashCode);
//   assert(p1 == p2);
//   assert(p1 != p3);
// }


class Process {
  // Represents a process...
}

// class ProcessIterator implements Iterator<Process> {
//   @override
//   Process get current => 
//   @override
//   bool moveNext() => 
// }

// A mythical class that lets you iterate through all
// processes. Extends a subclass of [Iterable].
class Processes extends IterableBase<Process> {
  @override
  final Iterator<Process> iterator = ProcessIterator() as Iterator<Process>;
}

class ProcessIterator {
}

// void main() {
//   // Iterable objects can be used with for-in.
//   for (final process in Processes()) {
//     // Do something with the process.
//   }
// }
