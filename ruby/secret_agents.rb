
def encrypt(str)

	x = ""

	for i in 0..str.length - 1

		x << str[i].next[0]

		i += 1

	end

	return x
end

#p encrypt("abc")

#p encrypt("zed") 


def decrypt(str)

	x = ""

	alpha = "abcdefghijklmnopqrstuvwxyz" # index will be 0 through 25

	for i in 0..str.length - 1

		x << alpha[alpha.index(str[i])-1]

		i += 1

	end

	return x
end

#p decrypt("bcd")

#p decrypt("afe")

#p decrypt(encrypt("swordfish")) # Encrypts the string first (+1 letter) with in the method then decrypts to present the origina "swordfish string"

puts "Would you like to encrypt or decrypt a password?"

choice = gets.chomp

puts "Please enter a password..."

password = gets.chomp

if choice == "encrypt"
	puts "Your encrypted password is #{encrypt(password)}."
end

if choice == "decrypt"
	puts "Your ascii password is #{decrypt(password)."
end

