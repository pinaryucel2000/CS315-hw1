<!DOCTYPE html>
<html>
<body>

<?php

// 1. Initialize
echo '1. Initialize<br>';

// I am trying to initialize a map. I will see its correctness later in the code. 
$namesToNumbers = ['James' => 1, 
				   'Mary' => 2,
                   'John' => 3,
                   'Jennifer' => 4,
                   'Daniel' => 5];

// 2. Get the value for a given key
echo '<br>2. Get the value for a given key<br>';

// I am trying to print the value of 'John' key. If it prints 3, then I successfully got the value.
echo "John's number is " . $namesToNumbers['James'] . "<br>";

// 3. Add a new element
echo '<br>3. Add a new element<br>';

// I am trying to add a new key 'Sarah' and associate it with the value 6. I found that there are two ways to do that. I will test each of them with echo later.
//$namesToNumbers['Sarah'] = 6;
$namesToNumbers += ['Sarah' => 6];

// I am trying to print the value of the 'Sarah' key. If it prints 6, then I successfully added the key 'Sarah' with the value 6 into the map.
echo "Sarah's number is " . $namesToNumbers['Sarah'] . "<br>";

// 4. Remove an element
echo '<br>4. Remove an element<br>';

// I am trying to print the value of the 'Mary' key. If it prints 2, then it was previously initialized as expected and currently exists in the map.
echo "Mary's number is " . $namesToNumbers['Mary'] . "<br>";

// I am trying to delete the 'Mary' key and its value with the unset function. 
unset($namesToNumbers['Mary']);

// I am trying to print the value of the 'Mary' key again. If it prints undefined, then I successfully removed 'Mary' key and its value.
echo "Mary's number is " . $namesToNumbers['Mary'] . "<br>";

// 5. Modify the value of an existing element
echo '<br>5. Modify the value of an existing element<br>';

// I am trying to print the value of the 'Jennifer' key. If it prints 4, then it was previously initialized as expected and currently exists in the map.
echo "Jennifer's number is " . $namesToNumbers['Jennifer'] . "<br>";

// I am trying to set the value of the 'Jennifer' key to the value of 10.
$namesToNumbers['Jennifer'] = 10;

// I am trying to get the updated value of the 'Jennifer' key. If it prints the updated value which is 10, then I successfully updated the value previously.
echo "Jennifer's number is " . $namesToNumbers['Jennifer'] . "<br>";

// 6. Search for the existence of a key
echo '<br>6. Search for the existence of a key<br>';

// I found that there is a function called array_key_exists which searches for the existence of a key. I know that there is no key named 'Linda'. The function works if it prints the correct information.
if(array_key_exists('Linda', $namesToNumbers))
{
    echo '"Linda" key exists <br>';  
}
else
{
    echo '"Linda" key does not exist <br>';  
}

// I know 'John' key exists. I should try for this case too to confirm that the array_key_exists function works. I will confirm that it works if it prints the correct information.
if(array_key_exists('John', $namesToNumbers))
{
    echo '"John" key exists <br>';  
}
else
{
    echo '"John" key does not exist <br>';  
}

// 7. Search for the existence of a value
echo '<br>7. Search for the existence of a value<br>';

// I found that there is a function called in_array to search for the existence of a value. I know that 1 as a value exists in the map. It works if it prints the correct information.
if(in_array(1, $namesToNumbers, true))
{
    echo '1 value exists <br>';  
}
else
{
    echo '1 value does not exist <br>';  
}

// I know 0 as a value does not exist in the map. I should try for this case too to confirm that the in_array function works. I will confirm that it works if it prints the correct information.
if(in_array(0, $namesToNumbers, true))
{
    echo '0 value exists <br>';  
}
else
{
    echo '0 value does not exist <br>';  
}

// 8. Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
echo '<br>8. Loop through an associative array, apply a function, called foo, which simply prints the key-value pair<br>';

// I found that there is no shortcut to print the elements of a map. I will try to print the elements with foreach. If it prints then it works.
function foo($map)
{
    foreach ($map as $k=>$v)
    {
        echo "$k-$v <br>";
    }	
    
    // Alternative way. It doesnt look very nice when printed like this.
    // print_r($namesToNumbers);
}

foo($namesToNumbers);

?>

</body>
</html>