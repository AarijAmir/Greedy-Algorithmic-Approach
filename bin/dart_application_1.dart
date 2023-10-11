import 'fractional_knap_sack/fractional_knapsack.dart';
import 'fractional_knap_sack/knapsack_item.dart';

void main(List<String> arguments) {
  /// (1) Fractional Knapsack Problem
  List<KnapsackItem> items = [];
  List<int> value = [100, 120, 60];
  List<int> weight = [20, 30, 10];
  int capacity = 50;
  for (var i = 0; i < value.length; i++) {
    items.add(KnapsackItem(index: i + 1, value: value[i], weight: weight[i]));
  }
  FractionalKnapsack.knapsack(items: items, capacity: capacity);

  /// (2)  Coin Change Problem
  // List<int> coins = [1, 2, 5, 10, 20, 50, 100, 1000];
  // int amount = 2035;
  // print('Coins Available: $coins');
  // print('Target Amount: $amount');
  // CoinChangeProblem.coinChangeProblem(coins: coins, totalAmount: amount);

  /// (3) Activity Selection Problem
  // List<Activity> activities = [
  //   Activity(name: 'Activity-1', startTime: 0, finishTime: 6),
  //   Activity(name: 'Activity-2', startTime: 3, finishTime: 4),
  //   Activity(name: 'Activity-3', startTime: 1, finishTime: 2),
  //   Activity(name: 'Activity-4', startTime: 5, finishTime: 8),
  //   Activity(name: 'Activity-5', startTime: 5, finishTime: 7),
  //   Activity(name: 'Activity-6', startTime: 8, finishTime: 9),
  // ];
  // ActivitySelection.activitySelection(activities);
}
