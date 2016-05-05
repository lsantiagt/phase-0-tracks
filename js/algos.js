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

// 3
longest_word(["long phrase","longest phrase","longer phrase"])