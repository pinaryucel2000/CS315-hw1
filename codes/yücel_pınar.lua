-- 1. Initialize
io.write("1. Initialize\n\n")

--I am trying to initialize a map.
namesToNumbers = {["James"]= 1, 
                  ["Mary"] = 2,
                  ["John"] = 3, 
                  ["Jennifer"] = 4, 
                  ["Daniel"] = 5 }
              
-- 2. Get the value for a given key
io.write("2. Get the value for a given key\n")

-- I am trying to print the value of 'John' key . If it prints 3, then I successfully got the value.
io.write("John\'s number is " , namesToNumbers["John"], "\n")

-- 3. Add a new element
io.write("\n3. Add a new element\n")

-- I am trying to add a new key 'Sarah' and associate it with the value 6
namesToNumbers["Sarah"] = 6

-- I am trying to print the value of the 'Sarah' key. If it prints 6, then I successfully added the key 'Sarah' with the value 6 into the map.
io.write("Sarah\'s number is " , namesToNumbers["Sarah"], "\n")

-- 4. Remove an element
io.write("\n4. Remove an element\n")

-- I am trying to print the value of the 'Mary' key. If it prints 2, then it was previously initialized as expected and currently exists in the map.
io.write("Mary\'s number is " , namesToNumbers["Mary"], "\n")

-- I am trying to delete the 'Mary' key and its value from the map. 
namesToNumbers["Mary"] = nil

-- I am trying to print the value of the 'Mary' key again. If it prints nil, then I successfully removed 'Mary' key and its value.
io.write("Mary\'s number is ")
print(namesToNumbers["Mary"])

-- 5. Modify the value of an existing element
io.write("\n5. Modify the value of an existing element\n")

-- I am trying to print the value of the 'Jennifer' key. If it prints 4, then it was previously initialized as expected and currently exists in the map
io.write("Jennifer\'s number is " , namesToNumbers["Jennifer"], "\n")

-- I am trying to set the value of the 'Jennifer' key to the value of 10.
namesToNumbers["Jennifer"] = 10

-- I am trying to get the updated value of the 'Jennifer' key. If it prints the updated value which is 10, then I successfully updated the value previously.
io.write("Jennifer\'s number is " , namesToNumbers["Jennifer"], "\n")


-- 6. Search for the existence of a key
io.write("\n6. Search for the existence of a key\n")

--I know that there is no key named "Linda". The function works if it prints the correct information.
if namesToNumbers["Linda"] ~= nil then
    print("\"Linda\" key exists")
else
    print("\"Linda\" key does not exist") 
end

-- I know 'John' key exists. I should try for this case too to confirm that I have learned how to search for the existence of a key. I will confirm that I have learnt it if it prints the correct information.
if namesToNumbers["John"] ~= nil then
    print("\"John\" key exists")
else
    print("\"John\" key does not exist") 
end

-- 7. Search for the existence of a value
io.write("\n7. Search for the existence of a value\n")

-- I found that there is no shortcut to search for the existence of a value. I have to check all of the values to see if 1 as a value exists.I know that 1 as a value exists. This approach works if it prints the correct information.
for key,value in pairs(namesToNumbers) do 
    if value == 1 then
        print("1 value exists")
    end
end

-- I know that 0 does not exist as a value. I should try for this case too to confirm that I know how to search for the existence of a value. I will confirm that it works if it does not print anything.
for key,value in pairs(namesToNumbers) do 
    if value == 0 then
        print("0 value exists")
    end
end

-- 8. Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
io.write("\n8. Loop through an associative array\n")

-- I found that there is no shortcut to print the elements of a map. I will try to print the elements with a for. If it prints then it works.

function foo(t)
    for key,value in pairs(namesToNumbers) do 
        io.write(key, "-", value, "\n")
    end
end    

foo(namesToNumbers)