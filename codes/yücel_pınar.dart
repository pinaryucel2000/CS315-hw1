void main() 
{
  // 1. Initialize
  print('1. Initialize');
  
  // I am trying to test if I can initialize a map. I will see in the following lines if it works.
  var namesToNumbers = 
  {
    'James': 1,
    'Mary': 2,
    'John': 3,
    'Jennifer': 4,
    'Daniel': 5
  }; 
  
  // 2. Get the value for a given key
  print('\n2. Get the value for a given key ');
  
  // I am trying to get the value of the 'John' key into johnsNumber variable
  var johnsNumber = namesToNumbers['John'];
  
  // I am trying to print johnsNumber. If it prints 3, then I successfully got the value for the 'John' key into the johnsNumber variable in the previous line.
  print("John\'s number is $johnsNumber");
  
  // 3. Add a new element
  print('\n3. Add a new element ');
 
  // I am trying to add a new key 'Sarah' and associating it with the value 6
  namesToNumbers['Sarah'] = 6;
 
  // I am trying to get the value of the 'Sarah' key into sarahsNumber variable
  var sarahsNumber = namesToNumbers['Sarah'];

  // I am trying to print sarahsNumber. If it prints 6, then I successfully added the key 'Sarah' with the value 6 into the map.
  print('Sarah\'s number is $sarahsNumber');
  
  // 4. Remove an element
  print('\n4. Remove an element');
 
  // I am trying to print the value of the 'Mary' key. If it prints 2, then it was previously initialized as expected and currently exists in the map.
  var marysNumber = namesToNumbers['Mary'];
  print('Mary\'s number is $marysNumber');
  
  // I am trying to remove the 'Mary' key and its value with the remove function. I found this function in Dart API.
  namesToNumbers.remove('Mary');
   
  // I am trying to print the value of the 'Mary' key again. If it prints null, then I successfully removed 'Mary' key and its value.
  marysNumber = namesToNumbers['Mary'];
  print('Mary\'s number is $marysNumber');
    
  // 5. Modify the value of an existing element
  print('\n5. Modify the value of an existing element');

  // I am trying to print the value of the 'Jennifer' key. If it prints 4, then it was previously initialized as expected and currently exists in the map.
  var jennifersNumber = namesToNumbers['Jennifer'];
  print('Jennifer\'s number is $jennifersNumber');
  
  // I found out from Dart API that there are more than one ways to modify the value of an existing element. I am trying to set the value of the 'Jennifer' key to value of 10.
  //namesToNumbers['Jennifer'] = 10;
  namesToNumbers.update('Jennifer', (e) => 10);
  
  // I am trying to get the updated value of the 'Jennifer' key. 
  jennifersNumber = namesToNumbers['Jennifer'];
 
  // If it prints the updated value which is 10, then I successfully updated the value previously.
  print('Jennifer\'s new number is $jennifersNumber');
  
  // 6. Search for the existence of a key
  print('\n6. Search for the existence of a key');
 
  // I found from Dart API that there is a function called containsKey which searches for the existence of a key. I know that there is no key named 'Linda'. The function works if it prints the correct information.
  if(namesToNumbers.containsKey('Linda'))
  {
    print('\"Linda\" key exists');  
  }
  else
  {
    print('\"Linda\" key does not exist');  
  }

  // I know 'John' key exists. I should try for this case too to confirm that the containsKey function works. I will confirm that it works if it prints the correct information.
  if(namesToNumbers.containsKey('John'))
  {
    print('\"John\" key exists');  
  }
  else
  {
    print('\"John\" key does not exist');  
  }
  
  // I can also try to search for the existance of a key by checking if it is equal to null. If it prints the correct information then this way works too.
  if(namesToNumbers['Linda'] != null)
  {
    print('\"Linda\" key exists');  
  }
  else
  {
    print('\"Linda\" key does not exist');  
  } 
  
  if(namesToNumbers['John'] != null)
  {
    print('\"John\" key exists');  
  }
  else
  {
    print('\"John\" key does not exist');  
  }
  
  // 7. Search for the existence of a value
  print('\n7. Search for the existence of a value');
 
  // I found from Dart API that there is a function called containsValue which searches for the existence of a value. I know that 1 as a value exists. The function works if it prints the correct information.
  if(namesToNumbers.containsValue(1))
  {
    print('1 value exists');  
  }
  else
  {
    print('1 value does not exist'); 
  }
  
  // I know that 0 does not exist as a value. I should try for this case too to confirm that the containsValue function works. I will confirm that it works if it prints the correct information.
  if(namesToNumbers.containsValue(0))
  {
    print('0 value exists');  
  }
  else
  {
    print('0 value does not exist'); 
  }
  
  // 8. Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
  print('\n8. Loop through an associative array');
  
  // I found from Dart API that there is already a function named toString that will help. I am trying to check what it prints. If it prints the key - value pairs, then it works.
  foo(map)
  {
    // Shortcut
    // print(map.toString());
   
    map.forEach((k, v) 
    {
      print('$k - $v');
    });
  }  
  
  foo(namesToNumbers);
}

