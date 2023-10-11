import 'knapsack_item.dart';

class FractionalKnapsack {
  // Time-Complexity = O(NLogN)
  // Space-Complexity = O(1)
  static void knapsack(
      {required List<KnapsackItem> items, required int capacity}) {
    items.sort(
      (objOne, objTwo) {
        if (objTwo.ratio > objOne.ratio) {
          return 1;
        } else {
          return -1;
        }
      },
    ); // According to Java-Doc it will take O(NLogN) Time

    int usedCapacity = 0; // O(1)
    double totalValue = 0; // O(1)
    for (var item in items) {
      // O(N)
      if (usedCapacity + item.weight <= capacity) {
        // O(1)
        usedCapacity += item.weight; // O(1)
        print('Taken: $item'); // O(1)
        totalValue += item.value; // O(1)
      } else {
        int usedWeight = capacity - usedCapacity; // O(1)
        double value = item.ratio * usedWeight; // O(1)
        print(
            'Taken: item Index = ${item.index}, Obtained value = $value/${item.value}, used weight = $usedWeight/${item.weight}, ratio = ${item.ratio}'); // O(1)
        usedCapacity += usedWeight; // O(1)
        totalValue += value; // O(1)
      }
      if (usedCapacity == capacity) {
        // O(1)
        break;
      }
    }
    print('Total Value Obtained: $totalValue'); // O(1)
  }
}
