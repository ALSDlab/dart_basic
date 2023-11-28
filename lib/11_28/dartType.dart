void main(){
  int a = 10;
  double b = 3.14;
  num c = 1;
  print("Numbers:");
  print("a: $a, b: $b, c: $c");


  String name = "John";
  String greeting = "hello, $name!";
  String multiLine = '''
  This is a multi-line string.
  It can cover multiple lines
  ''';
  print("\nStrings:");
  print("name: $name");
  print("greeting: $greeting");
  print("multiLine: $multiLine");

  bool isTrue = true;
  bool isFalse = false;
  print("\nBooleans:");
  print("isTrue: $isTrue");
  print("isFalse: $isFalse");


  List<int> numbers = [1,2,3];
  List<String> fruits = ["apple","banana","orange"];
  print("\nLists:");
  print("numbers: $numbers");
  print("fruits: $fruits");


  Set<int> numberSet = {1,2,3};
  Set<String> fruitsSet ={"apple", "banana", "orange"};
  print("\nSets");
  print("numberSet: $numberSet");
  print("fruitSet: $fruitsSet");


  Map<String, int> ages = {"John":30, "Jane":25};
  Map<String, String> colors = {"apple":"red","banana":"yellow", "orange":"orange"};
  print("\nMaps");
  print("ages: $ages");
  print("colors: $colors");
  
  
  Runes input = new Runes('\u{1f600}');
  String smiley = String.fromCharCodes(input);
  print("\nRunes");
  print("smiley: $smiley");


  Symbol s = #test;
  print("\nSymbols:");
  print(s);

    
 }