class Utils {

  // static String convertNumber(int numberLike){
  //   final usCurrency = NumberFormat('#,##0', 'en_US');

  //   var viewUnit = "";
  //   if(numberLike >= 1000 && numberLike < 1000000){
  //     viewUnit = "K";
  //     final numbers = usCurrency.format(numberLike).split(",");

  //     if(numbers[1][0] != "0"){
  //       return "${numbers[0]},${numbers[1][0]}$viewUnit";
  //     }else{
  //       return "${numbers[0]}$viewUnit";
  //     }
  //   }else if(numberLike >= 1000000){
  //     viewUnit = "M";
  //     final numbers = usCurrency.format(numberLike).split(",");
  //     if(numbers[1][0] != "0"){
  //       return "${numbers[0]},${numbers[1][0]}$viewUnit";
  //     }else{
  //       return "${numbers[0]}$viewUnit";
  //     }
  //   }
    
  //   return numberLike.toString();
  // } 
}

extension PowerString on String {
  String getShortAnswer() {
    const max = 150;
    if (length < 180) {
      return this;
    }
    final endIndex = indexOf(' ', max);
    return substring(0, endIndex + 1);
  }
}
