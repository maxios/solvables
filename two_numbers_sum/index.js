// TODO: refactor and add the test cases
module.exports = (list, n) => {
  let hash = {}

  for (let i = 0; i < list.length; i++) {
    const value = list[i];
    const next = list[i+1];
    const complementaries = Object.keys(hash);

    const compIndex = complementaries.indexOf(value.toString());

    if (compIndex !== -1) {
      const complementNumber = hash[complementaries[compIndex]];

      console.log('the two numbers sum are: ', value, complementNumber)
      return [value, hash[complementaries[compIndex]]]
    }

    hash[n - value] = value
  }

  return []
}

