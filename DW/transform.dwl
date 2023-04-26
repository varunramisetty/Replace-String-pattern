//Replace String pattern

%dw 2.0
output application/json
var v  = "Hello Good Morning (Take Tea) Go to office (Take Breakfast) . Work. (Bye for Now)"
//here im describing one variable v with some text so, from this particular text i want to replace variable v with another text 
---
  "v" 
  replace "v" 
  with ("Hello Good Morning Go to office . Work. (Bye for Now)")

// ----------------------------------------------------------------------------------------

// %dw 2.0
// output application/json
// var v  = "Hello Good Morning (Take Tea) Go to office (Take Breakfast) . Work. (Bye for Now)"
// ---
// {
//     "hi": "v" 
//     replace "v" 
//     with ("Hello Good Morning Go to office . Work. (Bye for Now)") 
// }

// ----------------------------------------------------------------------------------------

// %dw 2.0
// output application/json
// var v  = "Hello Good Morning (Take Tea) Go to office (Take Breakfast) . Work. (Bye for Now)"
// ---
//v replace  /\(Take.*?\)/  with ""

//"Hello Good Morning  Go to office  . Work. (Bye for Now)"
// here  /Take.*?/  was removing  only Take  in the o/p message 

//  v replace  /\(Bye.*?\)/  with ""    if you place /\(Bye.*?\)/ o/p will be
//"Hello Good Morning (Take Tea) Go to office (Take Breakfast) . Work. "

//  v replace  /\(.*?\)/  with "" if you place  /\(.*?\)/ o/p will be
//"Hello Good Morning  Go to office  . Work. "



// Expected o/p:-
// Hello Good Morning Go to office . Work. (Bye for Now)