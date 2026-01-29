void main(){
  int output = 13;
  print('output: $output');
  dynamic dynamicVar = 3; // dynamic means any or auto type 
  late value; // it like let or it says later i will use it 
  final finalInt =45; // this means this is the last and final excutable item and it only applied at end and once 
  int? nullableItem = null; // nullable items  (?) it after data type it means nullable
  // list and map
  List<int> listofItems  = [1,3,4,5,65,67,7]
  Map<String> mapItems = {
    "item1":"item",
    "item2":"item2",
  }
  int value1 =1;
  int value2 =434
  add(num1:value1 , num2:value2);

}

void add({required int num1 , required int num2}){
  int result = num1 + num2;
  print(result)
}