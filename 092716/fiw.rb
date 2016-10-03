def number_to_words(x)
	x = String x
	units = {
		"0" => "",
		"1" => "one",
		"2" => "two",
		"3" => "three",
		"4" => "four",
		"5" => "five",
		"6" => "six",
		"7" => "seven",
		"8" => "eight",
		"9" => "nine",
	}
	tens = {
		"2" => "twenty",
		"3" => "thirty",
		"4" => "forty",
		"5" => "fifty",
		"6" => "sixty",
		"7" => "seventy",
		"8" => "eight",
		"9" => "ninty",
	}
	one_tens = {
		"10" => "ten",
		"11" => "eleven",
		"12" => "twelve",
		"13" => "thirteen",
		"14" => "fourteen",
		"15" => "fifteen",
		"16" => "sixteen",
		"17" => "seventeen",
		"18" => "eighteen",
		"19" => "nineteen",
	}
	if x.length==3
		hundreds = x[0]
		hundreds_in_words = units[hundreds]+ " hundred"
		if x[1]=="0"
			x[2] == "1" ? divide = "" : divide = "-" 
			words = hundreds_in_words + " and " + units [ x[2] ]
		elsif x[1]=="1"
			words = hundreds_in_words + " and " + one_tens[x[1..2]]
		else
			x[2] == "0" ? divide = "" : divide = " and " 
			words = hundreds_in_words + divide + tens[x[1]] + divide + units[x[2]]
		end
	elsif x.length == 2
		if x[0] == "0"
			words = units[x[1]]
		elsif  x[0] == "1"
			words = one_tens[x]
		else
			words = tens[x[0]] + " " + units[x[1]]
		end
	elsif  x.length == 1
		words  = units[x]
	else
		words = "I don't get"	
	end

	words				
end

def fiw(x)
	if String(x)[0] == "-"
		is_minus = true
		x =  String(x)[1..-1].to_i

	else
		is_minus = false
	end
	billions = x / 1000000000
	x = x - (billions * 1000000000 )
	millions = x / 1000000
	x = x - (millions * 1000000 )
	#puts x
	thousands = x / 1000
	#puts thousands
	#puts number_to_words(thousands)
	x = x - (thousands * 1000)
	output = ""
	if billions > 0
		output = output + number_to_words(billions) + " billon,"
	end
	if millions > 0
		output = output + number_to_words(millions) + " million,"
	end
	if thousands > 0
		output = output + number_to_words(thousands) + " thousand,"
	end
	output = output + number_to_words(x)
	if is_minus
		output = "MINUS " + output
	end
	output.upcase
end

a = -2
puts fiw(a)
puts fiw(900000)
puts fiw(97875760000)
