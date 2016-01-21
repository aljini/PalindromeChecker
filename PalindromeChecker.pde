public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

public boolean palindrome(String word)
{
//get rid of annoying stuff in original

String emptyA = new String();
String newbA = new String();
 
 
 for(int i =0; i<word.length(); i++){
    
    if(word.substring(i,i+1).equals(" ")||word.substring(i,i+1).equals("!")||word.substring(i,i+1).equals("'")||word.substring(i,i+1).equals(",")){
    
      newbA = "";
    
    }
    else {newbA = word.substring(i,i+1);}
    
    emptyA = emptyA + newbA;   
 
 }
 


//actual palindrome code
 int last = word.length()-1;

 String pal = new String();

 String empty = new String();

 String partA = new String();
 

 for(int i = last;i>-1;i--){

    String newLetter = new String();

    if(word.substring(i,i+1).equals(" ")||word.substring(i,i+1).equals("!")||word.substring(i,i+1).equals("'")||word.substring(i,i+1).equals(",")){

      newLetter = "";

    }

    newLetter = word.substring(i,i+1);

    pal = pal+newLetter;

  }
// get rid of annoying pal

String emptyB = new String();
String newbB = new String();
 
 
 for(int i =0; i<word.length(); i++){
    
    if(pal.substring(i,i+1).equals(" ")||pal.substring(i,i+1).equals("!")||pal.substring(i,i+1).equals("'")||pal.substring(i,i+1).equals(",")){
    
      newbB = "";
    
    }
    else {newbB = pal.substring(i,i+1);}
    
    emptyB = emptyB + newbB;   
 
 }

  if (emptyB.equalsIgnoreCase(emptyA)) {

    return true;
    
  }
  return false;
}

