// Two Sum - Optimized Solution
// Time Complexity: O(n) - single pass through array
// Space Complexity: O(n) - HashMap storage

// Principles
// Given: x + y = target
// Known: x (current number)
// Find: y

// Solution:
// x + y = target
// y = target - x  (subtract x from both sides)

void main() {
  // Data 1
  List<int> nums1 = [2, 7, 11, 15];
  int target1 = 9;
  print('Data 1:');
  print('Input: nums = $nums1, target = $target1');
  print('Output: ${twoSum(nums1, target1)}');
  print('');

  // Data 2
  List<int> nums2 = [3, 2, 4];
  int target2 = 6;
  print('Data 2:');
  print('Input: nums = $nums2, target = $target2');
  print('Output: ${twoSum(nums2, target2)}');

  // Data 3
  List<int> nums3 = [3, 3];
  int target3 = 6;
  print('Data 3:');
  print('Input: nums = $nums3, target = $target3');
  print('Output: ${twoSum(nums3, target3)}');
}

List<int> twoSum(List<int> nums, int target) {
  Map<int, int> numMap = {}; // value -> index

  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i];

    if (numMap.containsKey(complement)) {
      return [numMap[complement]!, i];
    }

    numMap[nums[i]] = i;
  }

  return [];
}

/******************************************/
/* Two Sum - Brute Force Solution         */
/* Time Complexity: O(n^2) - nested loops */
/******************************************/

/*List<int> nums = [2, 7, 11, 15];
int target = 9;
void main() {
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        print('target: $target');
        print('values: ${nums[i]},${nums[j]}');
        print('indexes: [$i,$j] ');
      }
    }
  }
}*/
