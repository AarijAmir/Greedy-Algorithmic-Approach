import 'dart:core';

class Activity implements Comparable {
  String _name;
  int _startTime;
  int _finishTime;
  Activity(
      {required String name, required int startTime, required int finishTime})
      : _name = name,
        _finishTime = finishTime,
        _startTime = startTime;
  String get name => _name;
  set name(String name) => _name = name;
  int get startTime => _startTime;
  set startTime(int startTime) => _startTime = startTime;
  int get finishTime => _finishTime;
  set endTime(int finishTime) => _finishTime = finishTime;
  @override
  String toString() {
    // TODO: implement toString
    return 'Activity: $_name, Start Time: $_startTime, Finish Time: $finishTime';
  }

  @override
  int compareTo(covariant Activity other) {
    // TODO: implement compareTo
    return finishTime - other.finishTime;
  }
}
