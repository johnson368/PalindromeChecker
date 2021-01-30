public void setup()
{
String lines[] = {"test","rotator","rewriter","nurses run","Madam, I’m Adam!","A Man! A Plan! A Canal! Panama!"};
System.out.println("there are " + lines.length + " lines");
for (int i=0; i < lines.length; i++)
{
if(palindrome(lines[i])==true)
{
System.out.println(lines[i] + " IS a palindrome.");
}
else
{
System.out.println(lines[i] + " is NOT a palindrome.");
}
}
}
public boolean palindrome(String word)
{
String original = new String();
for(int i = 0; i<word.length(); i++)
if(Character.isLetter(word.charAt(i)) == true && !word.substring(i,i+1).equals(" "))
original = original + word.substring(i, i+1);
if(original.toLowerCase().equals(reverse(word).toLowerCase()))
return true;
return false;
}
public String reverse(String str)
{
String sNew = new String();

for(int i = str.length()-1; i>-1; i--)
if(Character.isLetter(str.charAt(i)) == true && !str.substring(i,i+1).equals(" "))
sNew = sNew + str.substring(i,i+1);
    return sNew;
}
