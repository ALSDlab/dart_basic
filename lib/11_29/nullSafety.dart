void main() {

  String? name;


  String age = '125';

  if(name != null){
    print(name.length);
  } else{
    print('it is null');
  }
  print(name?.length);


  print(age.length);
}