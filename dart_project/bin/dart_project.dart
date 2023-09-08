import 'dart:convert';
import 'dart:io';
import 'dart:math';
void main() {

Map word1 ={
"english" : "hello",
"german": "hallo",
};

Map word2 ={
"english" : "Good morning",
"german": "guten morgen",
};

Map word3 ={
"english" : "Good evening",
"german": "guten abend ",
};

Map word4 ={
"english" : "How are you?",
"german": "wie geht es dir?",
};

Map word5 ={
"english" : "Where are you from?",
"german": "woher kommst du",
};



List<dynamic> words = [word1,word2,word3,word4,word5];
// List<dynamic> arabic = [];


 print("Which language do you want to translate from ?  ");
 print("------------------------------------ ");

 String? userEnter = stdin.readLineSync();
 print("-------------------------------------- ");

if(userEnter != "german" && userEnter != "english"){
  print("not support this language");
 }else{


 print("Enter word to translate :");
 String? wordTranslate = stdin.readLineSync();
 print("-------------------------------------- ");

var result = false;
var resultAr = false;
for (var element in words) {
  
 if(userEnter == "english"){
    
   for(int i = 0 ; i<wordTranslate!.length; i++){
  
      for(int j = 0 ; j<element["english"]!.length; j++){

        if( wordTranslate[i].contains(element["english"][j])){
        
          result = true;

        }else{
          result = false;
        }

      }
     
   }
   
   
 }else if(userEnter == "german"){

   for(int i = 0 ; i<wordTranslate!.length; i++){
  
      for(int j = 0 ; j<element["german"]!.length; j++){

        if( wordTranslate[i].contains(element["german"][j])){
        
          resultAr = true;

        }else{
          resultAr = false;
        }

      }
     
   }

 }
   
 if (resultAr == true){
      print(element["german"]);
    }


 if (result == true){
      print(element["english"]);
    }


}
  
 }

}

