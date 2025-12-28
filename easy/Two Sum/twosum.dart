List<int> nums = [2, 7, 11, 15];
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
}
