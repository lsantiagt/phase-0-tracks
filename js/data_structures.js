var colors = ["blue","black","white","platinado"];
var horse_name = ["Ed","Marilyn","Quinto Centernario","San Pedro"];
var horses = {};
colors.push("Cow Theme");
horse_name.push("Emeregildo");

console.log(colors);
console.log(horse_name);

for (var i = 0; i < horse_name.length; i++) {
	 horses[horse_name[i]] = colors[i];
}

console.log(horses);
