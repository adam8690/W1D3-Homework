### A. Given the following data structure:

lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']

# 1. Work out how many stops there are in the array
puts "Q1"
puts lines.length()

# 2. Return 'Edinburgh Park' from the array
puts "Q2"
for stop in lines
  if stop == "Edinburgh Park"
    puts stop
  end
end

# 3. How many ways can we return 'Princes Street' from the array?
puts "Q3"
puts lines[4]
puts lines[-1]

# 4. Work out the index position of 'Haymarket'
puts "Q4"
position = 1
for stop in lines
if stop == "Haymarket"
  puts "Haymarket is stop #{position}"
else 
  position += 1
end
end
# 5. Add 'Airport' to the start of the array
puts "Q5"
lines.unshift("Airport")
puts lines
# 6. Add 'York Place' to the end of the array
puts "Q6"
lines.push("York Place")
puts lines
# 7. Remove 'Edinburgh Park' from the array using it's name
puts "Q7"
lines.delete("Edinburgh Park")
puts lines
puts "Q8"
# 8. Delete 'Edinburgh Park' from the array by index
# lines.delete_at(2)
# puts lines
# 9. Reverse the positions of the stops in the array
puts "Q9"
puts lines.reverse
### B. Given the following data structure:

my_hash = {"0" => "Zero", 1 => "One", :two => "Two", "two" => 2}

puts"# 1. How would you return the string `\"One\"`?"
puts my_hash[1]

puts "# 2. How would you return the string `\"Two\"`?"
puts my_hash[:two]

puts "# 3. How would you return the number `2`?"
puts my_hash["two"]

puts "# 4. How would you add `{3 => \"Three\"}` to the hash?"

my_hash[3] = "Three"
puts my_hash

puts"# 5. How would you add `{:four => 4}` to the hash?"
my_hash[:four] = 4
puts my_hash

### C. Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :favourite_numbers => [12, 42, 75, 12, 5],
    :home_town => "Stirling",
    :pets => {
      "fluffy" => :cat,
      "fido" => :dog,
      "spike" => :dog
    }
  },
  "Erik" => {
    :twitter => "eriksf",
    :favourite_numbers => [8, 12, 24],
    :home_town => "Linithgow",
    :pets => {
      "nemo" => :fish,
      "kevin" => :fish,
      "spike" => :dog,
      "rupert" => :parrot
    }
  },
  "Avril" => {
    :twitter => "bridgpally",
    :favourite_numbers => [12, 14, 85, 88],
    :home_town => "Dunbar",
    :pets => {
      "colin" => :snake
    }
  }
}

puts "# 1. Return Jonathan's Twitter handle (i.e. the string `\"jonnyt\"`)"
puts users["Jonathan"][:twitter]

puts "# 2. Return Erik's hometown"
puts users["Erik"][:home_town]

puts"# 3. Return the array of Erik's favorite numbers"
p users["Erik"][:favourite_numbers]

puts "# 4. Return the type of Avril's pet Colin"
puts users["Avril"][:pets]["colin"]

puts "# 5. Return the smallest of Erik's favorite numbers"
favnums = users["Erik"][:favourite_numbers]
puts favnums.sort.first

puts "# 6. Add the number `7` to Erik's favorite numbers"
users["Erik"][:favourite_numbers].push(7)
puts users["Erik"][:favourite_numbers]

puts "# 7. Change Erik's hometown to Edinburgh"
users["Erik"][:home_town] = "Edinburgh"
p users["Erik"]

puts "# 8. Add a pet dog to Erik called Fluffy"
users["Erik"][:pets]["Fluffy"] = :dog
p users["Erik"]

puts "# 9. Add yourself to the users hash"
users["Adam"] = {
  :twitter => "abaxter90",
  :favourite_numbers => [7],
  :home_town => "Aberdeen",
  :pets => {
    "Alfie" => :dog
  }
}
p users