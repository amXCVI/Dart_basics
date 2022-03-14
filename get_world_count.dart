Map getWorldCountOnList(Iterable worldsList) {
  var worldsCountMap = <String, int>{};

  worldsList.forEach((element) {
    if (!worldsCountMap.containsKey(element)) {
      worldsCountMap[element] = 1;
    } else {
      worldsCountMap[element] = worldsCountMap[element]! + 1;
    }
  });
  
  return worldsCountMap;
}