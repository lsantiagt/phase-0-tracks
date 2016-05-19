console.log("Just enter the javascript..(testing)");

//create an h2 element after the img
function addWarning(event) {
	var grabButton = document.getElementById("button");
	var newWarning = document.createElement("h2");
	var Warning = document.createTextNode("NO speeding on your travel to the Track, be save!")
	newWarning.appendChild(Warning);
	document.body.appendChild(newWarning);
}

addWarning();
showPicture();

//click on the button to hide the picture
function hidePicture(event) {
	document.getElementById("track").hidden = true;
	document.getElementById("hide-button").hidden = true; 
	document.getElementById("show-button").hidden = false; 
}

// Add the event listener to the button
var clickButton = document.getElementById("hide-button");
clickButton.addEventListener("click", hidePicture);

//click on the button to show the picture
function showPicture(event) {
	document.getElementById("track").hidden = false;
	document.getElementById("show-button").hidden = true;
	document.getElementById("hide-button").hidden = false;  
}

// Add the event listener to the button
var clickButton = document.getElementById("show-button");
clickButton.addEventListener("click", showPicture);
