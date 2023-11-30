void main(){
  List<int> cards = [1,2,3,4,5];
  List<int> collectCards = [1,3,2,5];

  for (int i=1;i<=cards.length;i++) {
    if (collectCards.contains(i) == true) {
      continue;
    } else {
      print(i);
    }
  }
}
