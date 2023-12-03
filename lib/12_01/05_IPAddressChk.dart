import 'dart:io';

void main() {
  String? IPCount = stdin.readLineSync();
  int intCount = int.parse(IPCount!);
  List<String> resultlist = [];
  for (int i = 1; i <= intCount; i++) {
    String? IPAddress = stdin.readLineSync();
    List<String?> IPAddressNums = IPAddress!.split('.');
    int resultNum = 1;
    for (int j = 0; j < IPAddressNums.length; j++) {
      int? eachNum;
      var numChk = IPAddressNums[j];
      if ((numChk != '') && (IPAddressNums.length == 4)) {
        eachNum = int.parse(IPAddressNums[j]!);
      } else {
        resultNum = 0;
        continue;
      }
      if ((0 <= eachNum) && (eachNum <= 255)) {
        resultNum *= 1;
      } else {
        resultNum *= 0;
      }
    }
    if (resultNum == 1) {
      resultlist.add('True');
    } else {
      resultlist.add('False');
    }
  }
  for (int k = 0; k < resultlist.length; k++) {
    print(resultlist[k]);
  }
}
