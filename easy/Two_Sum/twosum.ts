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


function main(): void {
    // Data 1
    const nums1: number[] = [2, 7, 11, 15];
    const target1: number = 9;
    console.log('Data 1:');
    console.log(`Input: nums = [${nums1}], target = ${target1}`);
    console.log(`Output: [${twoSum(nums1, target1)}]`);
    console.log('');

    // Data 2
    const nums2: number[] = [3, 2, 4];
    const target2: number = 6;
    console.log('Data 2:');
    console.log(`Input: nums = [${nums2}], target = ${target2}`);
    console.log(`Output: [${twoSum(nums2, target2)}]`);
    console.log('');

    // Data 3
    const nums3: number[] = [3, 3];
    const target3: number = 6;
    console.log('Data 3:');
    console.log(`Input: nums = [${nums3}], target = ${target3}`);
    console.log(`Output: [${twoSum(nums3, target3)}]`);
}

function twoSum(nums: number[], target: number): number[] {
    const numMap: Map<number, number> = new Map(); // value -> index

    for (let i = 0; i < nums.length; i++) {
        const complement: number = target - nums[i];

        if (numMap.has(complement)) {
            return [numMap.get(complement)!, i];
        }

        numMap.set(nums[i], i);
    }

    return [];
}

main();