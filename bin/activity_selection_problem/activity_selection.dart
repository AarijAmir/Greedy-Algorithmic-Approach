// We compare the activities based on the finish time.
import 'activity.dart';

class ActivitySelection {
  // Time Complexity O(NLogN)
  // Space Complexity O(1) - because no extra space is required.
  static void activitySelection(List<Activity> activityList) {
    activityList.sort(); // O(NLogN)
    Activity previousActivity = activityList[0]; // O(1)
    print('\n\n Recommended Schedule\n${activityList[0]}'); // O(1)
    for (var i = 1; i < activityList.length; i++) {
      // O(N)
      Activity activity = activityList[i]; // O(1)
      if (activity.startTime >= previousActivity.finishTime) {
        // O(1)
        print(activity); // O(1)
        previousActivity = activity; // O(1)
      }
    }
  }
}
