void main(){
  String num1 = "11111111111";
  String num2 = "11111";

  void canParty (String a) {
    List<String> list = a.split('');
    if (list.length>=11){
      print("OK");
    }else{
      print(11-list.length);
    }
  }

  canParty(num1);
  canParty(num2);
}