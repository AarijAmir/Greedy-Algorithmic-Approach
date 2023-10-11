class CoinChangeProblem {
  // Time Complexity = O(NlogN)
  // Space Complexity = O(1)
  static void coinChangeProblem(
      {required List<int> coins, required int totalAmount}) {
    coins.sort(); // JAVA- DOCS TIME COMPLEXITY = NLogN
    int index = coins.length - 1; // O(1)
    while (true) {
      // O(N)
      int coinValue = coins[index]; // O(1)
      index--; // O(1)
      int maxAmount = (totalAmount ~/ coinValue) * coinValue; // O(1)
      if (maxAmount > 0) {
        // O(1)
        print(
            'Coin Value: $coinValue taken count: ${totalAmount ~/ coinValue}'); // O(1)
        totalAmount = totalAmount - maxAmount; // O(1)
      }
      if (totalAmount == 0) {
        // O(1)
        break;
      }
    }
  }
}
