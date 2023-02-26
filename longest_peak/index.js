function longestPeak(array) {
  // Write your code here.
	
  // if the array smaller than 2, there is no peaks and dips
  if (array.length == 1) return 1;
  if (array.length < 2) return 0;

  // The longest peak
  let peakLength = 0;
  
  // The counter of the current peak
  let currentPeakLength = 0;

  // loop on every element
  for (i = 1; i < array.length - 1; i++) {
    const current = array[i];
    const next = array[i+1];
    const prev = array[i-1];

    const isPeak = current > prev && current > next

    if (isPeak) {

      // reset the counter
      currentPeakLength = 0;
      continue;
    }

    currentPeakLength++
    peakLength = Math.max(peakLength, currentPeakLength)
  }

  console.log(peakLength, currentPeakLength)
  return peakLength + 1
}

// Do not edit the line below.
exports.longestPeak = longestPeak;

