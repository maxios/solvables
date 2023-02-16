function hasSingleCycle(array) {
  // Write your code here.
  let elementsVisited = 0;
  let currentIdx = 0;
  
  while (elementsVisited < array.length) {
    if (elementsVisited > 0 && currentIdx == 0) return false;

    const nextIdx = getNextIdx(currentIdx, array)

    currentIdx = nextIdx;
    elementsVisited++
  }

  return currentIdx == 0
}

function getNextIdx(currentIdx, array) {
  const jump = array[currentIdx]
  const nextIdx = (currentIdx + jump) % array.length
  
  if (nextIdx >= 0) return nextIdx
  if (nextIdx < 0) return nextIdx + array.length
}

// Do not edit the line below.
exports.hasSingleCycle = hasSingleCycle;

