import 'dart:io';

main(){
  /*Pegar PESO
    Pegar ALTURA
    Realizar CÁLCULO
    Retornar RESULTADO
  */
  print("Digite seu peso e sua altura: ");
  String? textPeso = stdin.readLineSync(), textAltura = stdin.readLineSync();
  if(textPeso != null && textAltura != null){
    var peso = int.parse(textPeso);
    var altura = double.parse(textAltura);
    var calcImc = peso / (altura * altura);
   if(calcImc < 18.5){
     print(calcImc);
     print("Abaixo do peso");
   }else if(calcImc > 18.5 && calcImc < 24.9){
     print("Peso normal");
   }else if(calcImc > 25 && calcImc < 29.9){
     print("Sobrepeso");
   }else if(calcImc > 30 && calcImc < 34.9){
     print("Obesidade 1");
   }else if(calcImc > 35 && calcImc < 39.9){
     print("Obesidade 2");
   }else{
     print("Obesidade 3");
   }
  }
}