void main(){
 int number = 1;
 int clapNum = 0;
 int roolNum = 0;
 int ahhNum = 0;
 int playerOneClap = 0;
 int playerTwoClap = 0;
 int playerThreeClap = 0;
 int playerFourClap = 0;
 int bestplayer = 0;

 int count = 100;

 while (number <= count) {
  int playerNum = number%4;
  int a = (number%30);
  int b = (number%3);
  int c = (number%10);

  if (playerNum == 0){
   playerNum = 4;
  }
  if (a == 0){
   print("Player $playerNum: ahh");
   ahhNum++;
  } else if (b == 0){
   print("Player $playerNum: clap");
   clapNum++;
   switch(playerNum){
    case 1: playerOneClap++;
     break;
    case 2: playerTwoClap++;
     break;
    case 3: playerThreeClap++;
     break;
    default: playerFourClap++;
     break;
   }
  } else if (c == 0){
   print("Player $playerNum: rool");
   roolNum++;
  } else {
   print("Player $playerNum: $number");
  }
  number++;
 }
 print("clap의 총 갯수: $clapNum");
 print("rool의 총 갯수: $roolNum");
 print("ahh의 총 갯수: $ahhNum");
 print("Player 1: $playerOneClap");
 print("Player 2: $playerTwoClap");
 print("Player 3: $playerThreeClap");
 print("Player 4: $playerFourClap");
 if (playerOneClap < playerTwoClap){
  bestplayer = 2;
 } else if (playerOneClap < playerThreeClap){
  bestplayer = 3;
 } else if (playerOneClap < playerFourClap){
  bestplayer = 4;
 }else {
  bestplayer = 1;
 }

 print("가장 많은 Clap을 출력한 플레이어: Player $bestplayer");
}