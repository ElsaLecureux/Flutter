void main () {
    List<int> list = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
    List<int> listOfEvenNumbers = [];
    for (var i in list) {
        if(i.floor().isEven) {
            listOfEvenNumbers.add(i);
        }
    }
    print(listOfEvenNumbers);
}