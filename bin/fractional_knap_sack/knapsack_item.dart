class KnapsackItem {
  int _index;
  int _value;
  int _weight;
  double _ratio; // will be calculated on the basis of weight and value.
  KnapsackItem({required int index, required int value, required int weight})
      : _index = index,
        _value = value,
        _weight = weight,
        _ratio = value / weight;
  int get index => _index;
  set index(int index) => _index = index;
  int get value => _value;
  set value(int value) => _value = value;
  int get weight => _weight;
  set weight(int weight) => _weight = weight;
  double get ratio => _ratio;
  set ratio(double ratio) => _ratio = ratio;
  @override
  String toString() {
    // TODO: implement toString
    return 'Item Index=$index, value=$value, weight=$weight, ratio=$ratio';
  }
}
