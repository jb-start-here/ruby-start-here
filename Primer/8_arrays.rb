# arrays

# creating new arrays
a = []
Array.new # []
Array.new(4) # [nil, nil, nil, nil]
Array.new(2, 'hi') # ['hi', 'hi']
Array.new(3) { |i| i.even? ? 'e': 'o'} # ["e", "o", "e"]

# append stuff to array
a << :jerry
a.append(:noel)
a.push(:vance)


# prepend stuff to array
a.prepend(1)
a.unshift(5)

# rm from end, takes an argument; no of elements to rm
a.pop

# rm from Start, takes an argument; no of elements to rm
a.shift


# inter section of arrays 
[ 1, 1, 3, 5 ] & [ 3, 2, 1 ]  #=> [ 1, 3 ]

puts a
