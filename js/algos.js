// Write a function that
// Receive an array as input
// 1. for each word in the array get the length of each word and store the longest value
// 2. find words with that length
// 3. Print word

function longest_word(word_array) {
	// 1
	max_word_length = 0
	for (var i = 0; i < word_array.length; i++) {
		if (word_array[i].length > max_word_length) { max_word_length = word_array[i].length; }
	}
    // 2
    for (var i = 0; i < word_array.length; i++) {
    	if (word_array[i].length == max_word_length)  {console.log("Longest Word in the array is "+word_array[i]+".");}
    }
}

// Write a function that
// Receive two hashes as parameters
// 1. Check each key-value on hash 1 and verify if exists in hash 2
// 2. if any key-value exists in both hash then return true
// 3. else return false
// 

function check_keyval(hash1, hash2) {
	
	var v_exists = 0;
	Object.keys(hash1).forEach(function(key, index) {
	       //console.log(this[key]+key);
	       // 1 
	        Object.keys(hash2).forEach(function(key2, index2) {
	            // 2
	            if (hash1[key]+key == hash2[key2]+key2)  {
	               //console.log("True: " + hash1[key]+key + " " + hash2[key2]+key2);
	               v_exists =  v_exists + 1;
	            }   
	        },hash1)
	  });
	//3
     if (v_exists > 0) {return true;} else {return false;}
}

// Write a function that takes integer (length)
// Return an array with the length specified on the input
// 1. Define a variable with posible letters
// 2. Identify how to build a ramdon word using posible letters using a ramdom length up to 10 characters
// 3. build the array with words generated

function gen_words_array(num_words) {    

	var word = "";
    var possible_char = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    var array_words =[];

    for (var i = 0; i < num_words; i++) {
    	console.log(i);
         num_letters =  Math.floor(Math.random() * (10));
         for (var x= 0; x < num_letters; x++) {
         	ramdom_letter = 
         	word +=  possible_char.substr( Math.floor(Math.random() * (61)), 1);
         }
         array_words.push(word);
    }
    return array_words;
}


// 3 function longest word
longest_word(["long phrase","longest phrase","longer phrase"])

var hash1={name: "Steven", age: 54, country: "USA"};
var hash2={name: "Tamir", age: 54};
var hash3={name: "Luis", age: 53, country: "USA"};
var check_results = null;
console.log(" ");
check_results = check_keyval(hash1, hash2);
console.log(hash1)
console.log(hash2)
console.log("First result is " + check_results );
console.log("");
check_results = check_keyval(hash1, hash3);
console.log(hash1)
console.log(hash3)
console.log("First result is " + check_results);
console.log("");
check_results = check_keyval(hash2, hash3);
console.log(hash2)
console.log(hash3)
console.log("First result is " + check_results);


console.log( Math.floor(Math.random() * 9));


console.log(gen_words_array(3));