import 'dart:io';

void main() {
  int returnNum = 0;
  String? inputImage = stdin.readLineSync();
  List<String> inputImagePixels = inputImage!.split(' ');
  List<int> pixelSize = [];
  List<List> lineList = [];
  for (int i = 0; i < inputImagePixels.length; i++) {
    int eachNum = int.parse(inputImagePixels[i]);
    pixelSize.add(eachNum);
  }
  for (int j = 0; j < pixelSize[0]; j++) {
    String? inputNum = stdin.readLineSync();
    List<String> inputNumPixels = inputNum!.split(' ');
    List<int> linePixelNum = [];
    for (int k = 0; k < inputNumPixels.length; k++) {
      int eachNum1 = int.parse(inputNumPixels[k]);
      if (128 <= eachNum1) {
        returnNum = 1;
      } else {
        returnNum = 0;
      }
      linePixelNum.add(returnNum);
    }
    lineList.add(linePixelNum);
  }

  for (int l = 0; l < lineList.length; l++) {
    print(lineList[l]);
  }
}