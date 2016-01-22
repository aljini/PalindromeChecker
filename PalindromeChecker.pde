
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
public String getRid(String word){

//get rid of annoying stuff 
//getRid
String emptyA = new String();
String newbA = new String();
 
 
 for(int i =0; i<word.length(); i++){
    
    if(word.substring(i,i+1).equals(" ")||word.substring(i,i+1).equals("!")||word.substring(i,i+1).equals("'")||word.substring(i,i+1).equals(",")){
    
      newbA = "";
    
    }
    else {newbA = word.substring(i,i+1);}
    
    emptyA = emptyA + newbA;   
 }

return emptyA;
}

public String reversal(String word) {

  //actual palindrome code
  //pal stuff
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
  return pal;
}
public boolean palindrome(String word)
{

  String emptyX = new String();
  String emptyY = new String();

  emptyX = word;
  emptyY = reversal(word);

  emptyX = getRid(emptyX);
  emptyY = getRid(emptyY);

  if (emptyX.equalsIgnoreCase(emptyY)) {

    return true;
    
  }
  return false;
}

