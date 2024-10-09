// stdin için dart.io kütüphanesi eklendi
import 'dart:io';

void main(List<String> args){
  // ? int de olabilir null da olabilir. stdin.readLineSync() string kullanıcı girişi alıyor. ! ise kesinlikle null olmadığını garanti eder. int.parse() ile de stringi int e çeviriyoruz.
  // try hata bulursa fırlatır.
  try{
    print("Birinci sayiyi giriniz: ");
    double? sayi1 = double.parse(stdin.readLineSync()!);
    print("Ikinci sayiyi giriniz: ");
    double? sayi2 = double.parse(stdin.readLineSync()!);
    print("Bir işlem türü giriniz: ");
    String? islemTuru = stdin.readLineSync();
    switch(islemTuru){
      case '+':
        print("$sayi1 $islemTuru $sayi2 = ${sayi1 + sayi2}");
        break;
      case '-':
        print("$sayi1 $islemTuru $sayi2 = ${sayi1 - sayi2}");
        break;
      case '*':
        print("$sayi1 $islemTuru $sayi2 = ${sayi1 * sayi2}");
        break;
      case '/':
        if(sayi2 != 0){
          print("$sayi1 $islemTuru $sayi2 = ${sayi1 / sayi2}");
        }else{
          print("Payda sifir olamaz! Lütfen sifirdan farkli bir sayi giriniz!");
        }
        break;
      default:
        print("İalem türünü yanlis girdiniz! \n Girdiginiz islem türü: $islemTuru \n Bunlardan birini giriniz: +, -, *, /");
    }
    
  }on FormatException catch(e){ // catch fırlatılan hatayı yakalar.
    print("Hata Mesajiniz: ${e.message}");
  }
}
