# 1. Initialize
print '1. Initialize', "\n"

# I am trying to test if I can initialize a map. I will see in the following lines if it works.
namesToNumbers = 
{
    'James'=> 1,
    'Mary'=> 2,
    'John'=> 3,
    'Jennifer'=> 4,
    'Daniel'=> 5
};

# 2. Get the value for a given key
print "\n", '2. Get the value for a given key ', "\n"

# I am trying to print the value of the "John" key. If it prints 3, then I successfully got the value for the 'John' key. 
print 'John\'s number is ', namesToNumbers["John"], "\n"

# I am trying the same thing with the fetch function. If it prints 3, then I successfully got the value for the 'John' key. 
# print 'John\'s number is ', namesToNumbers.fetch("John"), "\n"

# 3. Add a new element
print "\n", '3. Add a new element ', "\n"

# I am trying to add a new key "Sarah" and associating it with the value 6.
namesToNumbers['Sarah'] = 6

# I am trying to print the value of they "Sarah" key. If it prints 6, then I successfully added the key "Sarah" with the value 6 into the map.
print 'Sarah\'s number is ', namesToNumbers.fetch("Sarah"), "\n"

# 4. Remove an element
print "\n", '4. Remove an element ', "\n"

# I am trying to print the value of the 'Mary' key. If it prints 2, then it was previously initialized as expected and currently exists in the map.
print 'Mary\'s number is ', namesToNumbers["Mary"], "\n"

# I am trying to remove the "Mary" key and its value with the delete function.
namesToNumbers.delete("Mary")

# I am trying to print the value of the "Mary" key again. If it prints nothing, then I successfully removed 'Mary' key and its value.
print 'Mary\'s number is ', namesToNumbers["Mary"], "\n"

# 5. Modify the value of an existing element
print "\n", '5. Modify the value of an existing element ', "\n"

# I am trying to print the value of the 'Jennifer' key. If it prints 4, then it was previously initialized as expected and currently exists in the map.
print 'Jennifer\'s number is ', namesToNumbers["Jennifer"], "\n"

# I am trying to modify the value of the 'Jennifer' key
namesToNumbers['Jennifer'] = 10

# If it prints 10, then I modified its value
print 'Jennifer\'s number is ', namesToNumbers["Jennifer"], "\n"

# 6. Search for the existence of a key
print "\n", '6. Search for the existence of a key ', "\n"

# I am trying to search for a key that I know that does not exist. I am using a function named key?. If it prints the correct information then it works.
if namesToNumbers.key?("Linda")
	print '"Linda" key exists', "\n" 
else
	print '"Linda" key does not exist', "\n"
end

# I am trying to search for a key that I know that does exist. If it prints the correct information then it works.
if namesToNumbers.key?("John")
	print '"John" key exists', "\n"
else
	print '"John" key does not exist', "\n"
end

# 7. Search for the existence of a value
print "\n", '7. Search for the existence of a value ', "\n"

# I am trying to search for a value that I know that does exist. I am using a function named value?. If it prints the correct information then it works.
if namesToNumbers.value?(1)
	print '1 value exists', "\n"
else
	print '1 value does not exist', "\n"
end

# I am trying to search for a key that I know that does not exist. If it prints the correct information then it works.
if namesToNumbers.value?(0)
	print '0 value exists', "\n"
else
	print '0 value does not exist', "\n"
end
	
# 8. Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
print "\n", '8. Loop through an associative array ', "\n"

# I am trying to print the elements with the help of the inspect function 
def foo(map)
    # Shortcut
    #print map.inspect, "\n"
    
     map.each {|k, x| puts "#{k} - #{x}"}
end

foo(namesToNumbers)
	