void main(){
  int number = 1;
  int clapNum = 0;
  int manseNum = 0;

  int count = 300;
  int playerCount = 4;

  int countLen = count.toString().length;
  print("Count는 $countLen자리수 입니다.");

  while (number <= count){
    int playerNum = number % (playerCount);
    if (playerNum == 0){
      playerNum = 4;
    }
    List<String> list = number.toString().split('');
    for (int i=0; i < list.length; i++){
      int eachNum = int.parse(list[i]);
      if ((eachNum!=0)&&(eachNum%3==0)){
        clapNum++;
      }
    }

    if (number%10==0){
      print("Player $playerNum: 만세!!!");
      manseNum++;
      } else if (clapNum==0){
        print("Player $playerNum: $number");
      } else {
      print("Player $playerNum: ${"짝!" * clapNum}");

    }
    number++;
    clapNum = 0;
    }
  print("총 만세회수: $manseNum");
}