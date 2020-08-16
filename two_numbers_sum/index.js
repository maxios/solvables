const two_numbers_sum = (list, n) => {
  let hash = {}

  for (let i = 0; i < list.length; i++) {
    const value = list[i];
    const next = list[i+1];
    const complementaries = Object.keys(hash);

    const compIndex = complementaries.indexOf(`${value}`);

    if (compIndex !== -1) {
      console.log('the two numbers sum are: ', value, hash[complementaries[compIndex]])
      return true
    }

    hash[n - value] = value
  }

  return false
}

two_numbers_sum([1, 2, 3, 4, 5, 6, 7, 8, 9], 15);
