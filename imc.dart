import 'dart:io';

main(){
 calculoDeImc();
}

calculoDeImc(){

  print("Digite seu peso e sua altura: ");
  String? textPeso = stdin.readLineSync(), textAltura = stdin.readLineSync();
  if(textPeso != null && textAltura != null){
    int peso = int.parse(textPeso);
    double altura = double.parse(textAltura);
    double imc = calcImc(peso, altura);
    imprimirResultado(imc);
  }
}

double calcImc(int peso, double altura){
  /*Pegar PESO
    Pegar ALTURA
    Realizar CÁLCULO
    Retornar RESULTADO
  */
  return peso / (altura * altura);
}

imprimirResultado(double imc){
  if(imc < 18.5){
    print(imc);
    print("Abaixo do peso");
  }else if(imc > 18.5 && imc < 24.9){
    print("Peso normal");
  }else if(imc > 25 && imc < 29.9){
    print("Sobrepeso");
  }else if(imc > 30 && imc < 34.9){
    print("Obesidade 1");
  }else if(imc > 35 && imc < 39.9){
    print("Obesidade 2");
  }else{
    print("Obesidade 3");
  }
}