// Data Structures in JS
// Variable definition

var colors = ["blue","black","white","platinado"];
var horse_name = ["Ed","Marilyn","Quinto Centernario","San Pedro"];
var horses = {};
// Adding a value to an array
colors.push("Cow Theme");
horse_name.push("Emeregildo");

//Print array to validate adding of values
console.log(colors);
console.log(horse_name);

//  Loop to add values to a hash
for (var i = 0; i < horse_name.length; i++) {
	 horses[horse_name[i]] = colors[i];
}

// Output to validate instructions executed
console.log("Hash Print");
console.log(horses);

console.log("Print value for San Pedro");
console.log(horses["San Pedro"]);

console.log(Object.keys(horses).length);

console.log("Print Hash Keys");
console.log( Object.keys(horses));

// Lets play with something faster (Exotic Cars)

function Car(model, year, color) {

  this.model = model;
  this.year = year;
  this.color = color;
  
  this.buildcar = function() {
 	                            console.log("Your Car " +model+ " is entering production line..."); 
 	                };
  this.paint = function() {
 	                          console.log("Your Car " +model+ " is being painted, color choosed was " +color+".");
 	             };
  
}

var Porsche = new Car("911 Carrera S", 2016, "red");
Porsche.buildcar();
Porsche.paint();

var Ferrari = new Car("La Ferrari", 1988, "manual");
Ferrari.buildcar();
Ferrari.paint()
