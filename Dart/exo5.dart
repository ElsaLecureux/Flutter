void main() {

  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int> commonElms = [];

  if (a.length > b.length) {
    for (var i in a) {
        for (var j in b) {
            if (i == j && !commonElms.contains(j)) {
                commonElms.add(j);
            }
        }
    }
  } else {
    for (var i in b) {
        for (var j in a) {
            if (i == j && !commonElms.contains(j)) {
                commonElms.add(j);
            }
        }
    }
  }
    print(commonElms);
}