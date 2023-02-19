function longestPeak(array) {
  // Write your code here.
	
  // if the array smaller than 2, there is no peaks and dips
  if (array.length == 1) return 1;
  if (array.length < 2) return 0;

  const peakIdx = [];

  // loop on every element and store the dip indices
  for (i = 0; i < array.length; i++) {
    // if the first element is peak, store the index
    if (i == 0 && array[0] > array[1]) peakIdx.push(0)
    // if the last element is peak, store the index
    if (i == array.length - 1 && array[array.length - 1] > array[array.length - 2]) peakIdx.push(array.length -1)

    // otherwise
    if (array[i+1] < array[i] && array[i-1] < array[i]) peakIdx.push(i)
  }

  // Get the bigger gap between indices
  let maxLength = 0;

  for (i = 1; i < peakIdx.length; i++) {
    maxLength = Math.max(maxLength, peakIdx[i] - peakIdx[i-1])
  }

  console.log(peakIdx.sort, peakIdx)
  return maxLength + 1
}

// Do not edit the line below.
exports.longestPeak = longestPeak;

