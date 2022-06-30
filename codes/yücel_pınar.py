# 1. Initialize
print('1. Initialize')

# I am trying to test if I can initialize a map. I will see in the following lines if it works.
namesToNumbers = {
    'James': 1, 
    'Mary': 2,
    'John': 3,
    'Jennifer': 4,
    'Daniel': 5
}

# 2. Get the value for a given key
print('\n2. Get the value for a given key ')

# I am trying to print the value of the "John" key with the get function. If it prints 3, then I successfully got the value for the 'John' key. 
print('John\'s number is ', end = "")
print(namesToNumbers.get("John"))

# I am trying if this works too. It works if it prints 3.
# print('John\'s number is', namesToNumbers["John"])

# 3. Add a new element
print('\n3. Add a new element ')

# I am trying to add a new key "Sarah" and associating it with the value 6 with the update function.
namesToNumbers.update({'Sarah': 6})

# I am trying an alternative way. 
# namesToNumbers['Sarah'] = 6

# I am trying to print the value of they "Sarah" key. If it prints 6, then I successfully added the key "Sarah" with the value 6 into the map.
print('Sarah\'s number is', namesToNumbers["Sarah"])

# 4. Remove an element
print('\n4. Remove an element')

# I am trying to print the value of the 'Mary' key. If it prints 2, then it was previously initialized as expected and currently exists in the map.
print('Mary\'s number is', namesToNumbers["Mary"])

# I am trying to remove the "Mary" key and its value with the pop function.
namesToNumbers.pop("Mary")

# I am trying to print the value of the "Mary" key again. If it is error, then I successfully removed 'Mary' key and its value.
# print('Mary\'s number is', namesToNumbers["Mary"])

# 5. Modify the value of an existing element
print('\n5. Modify the value of an existing element');

# I am trying to print the value of the 'Jennifer' key. If it prints 4, then it was previously initialized as expected and currently exists in the map.
print('Jennifer\'s number is', namesToNumbers["Jennifer"])

# I am trying to modify the value of the 'Jennifer' key
namesToNumbers['Jennifer'] = 10

# Alternative way
# namesToNumbers.update({'Jennifer': 10})

# If it prints 10, then I modified its value
print('Jennifer\'s number is', namesToNumbers["Jennifer"])

# 6. Search for the existence of a key
print('\n6. Search for the existence of a key');

# I am trying to search for a key that I know that does not exist. I am using a function named keys() which returns a list containing the dictionary's keys.
if "Linda" in namesToNumbers.keys():
	print('\"Linda\" key exists')
else:
	print('\"Linda\" key does not exist')

# I know 'John' key exists. I should try for this case too to confirm that the keys function works. I will confirm that it works if it prints the correct information.
if "John" in namesToNumbers.keys():
	print('\"John\" key exists')
else:
	print('\"John\" key does not exist')

# 7. Search for the existence of a value
print('\n7. Search for the existence of a value');

# I am trying to search for a value that I know that does exist. I am using a function named values which returns a list containing the dictionary's values.
if 1 in namesToNumbers.values():
	print('1 value exists')
else:
	print('1 value does not exist')

# I know that 0 does not exist as a value. I should try for this case too to confirm that the values function works. I will confirm that it works if it prints the correct information.
if 0 in namesToNumbers.values():
	print('0 value exists')
else:
	print('0 value does not exist')
    
# 8. Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
print('\n8. Loop through an associative array');

# I am trying to print the elements with the help of the items function with a for loop. If it prints then it works.
def foo(d):
	for k, v in d.items():
		print(k, "-", v)

foo(namesToNumbers)

