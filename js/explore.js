// Create reverse funcion
// Take string inputted by the user
// need to find the length of the string
// 
// for each letter in the string from the last letter
// insert into a new variable and continue appending to it

//Variables

var i = 0;
var newstr = "";
var reversedword = "";


function  reverse(string) { 
   for (i = string.length - 1; i >=  0; i-- ) 
       newstr = newstr + string[i];
       return newstr 
 }

reversedword = (reverse("Hello!"));
if (1==1) {
   console.log( reversedword );
}