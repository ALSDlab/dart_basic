import 'dart:io';

int stock = 5;
int myMoney = 5000;

Map<int, List> menu = {
  1: ['1.초콜릿', 500, stock],
  2: ['2.빼빼로', 600, stock],
  3: ['3.환타', 1000, stock],
  4: ['4.사이다', 1100, stock]
};

void menuShow() {
  print('===========자판기 상태===========');
  for (int i = 1; i <= menu.length; i++) {
    final String name = menu[i]![0];
    int cost = menu[i]![1];
    int cnt = menu[i]![2];
    print('$name - 가격: $cost원, 수량: $cnt개');
  }
  print('===============================');
}

void main() {
  while (true) {
    menuShow();
    stdout.write('메뉴를 고르세요(1-4): ');
    String? selectNum = stdin.readLineSync();
    int n = int.parse(selectNum!);
    if ((n < 1) || (n > 4)) {
      print('없는 메뉴입니다. 종료됩니다.');
      break;
    } else if (menu[n]![2] == 0) {
      print('재고가 소진되었습니다. 다른 메뉴를 선택하세요');
    } else if (myMoney < menu[n]![1]) {
      int needMoney = menu[n]![1] - myMoney;
      print('$needMoney원이 부족합니다.');
    } else {
      String chosedMenu = menu[n]![0];
      int chosedCost = menu[n]![1];
      myMoney -= chosedCost;
      menu[n]![2] -= 1;
      int remainStock = menu[n]![2];
      print(
          '[$chosedMenu 구매 성공] 가격: $chosedCost원, 거스름돈: $myMoney원, 남은 수량: $remainStock개');
    }
  }
}
