fn main() 
{
  // 1. Initialize
  println!("1. Initialize");
  
  use std::collections::HashMap;
  
  // I am trying to declare a map.
  let mut names_to_numbers = HashMap::new();
    
  // I am trying to initialize the map. I will see if it works later in the code.
  names_to_numbers.insert("James", 1);
  names_to_numbers.insert("Mary", 2);
  names_to_numbers.insert("John", 3);
  names_to_numbers.insert("Jennifer", 4);
  names_to_numbers.insert("Daniel", 5);
    
  // 2. Get the value for a given key
  println!("\n2. Get the value for a given key");
  
  // I am trying to get the value of the John key. It works if it prints 3.
  println!("John's number is {}", names_to_numbers["John"]);
  
  // 3. Add a new element
  println!("\n3. Add a new element");
  
  // This is error
  //names_to_numbers["Sarah"] = 6;
  
  // I am trying to insert a new key with the insert function.
  names_to_numbers.insert("Sarah", 6);
  
  // It means that the new key was successfully inserted if it prints 6.
  println!("Sarah's number is {}", names_to_numbers["Sarah"]);
  
  // 4. Remove an element
  println!("\n4. Remove an element");
  
  // I am first checking if the key was added successfuly on initialization. 
  println!("Mary's number is {}", names_to_numbers["Mary"]);
  
  // I am trying to remove the element with the remove function.
  names_to_numbers.remove("Mary");
 
  // I am trying to get the value of the key again to see what happened. If it gives error or something like that, then the removal was successful.
  //println!("Mary's number is {}", names_to_numbers["Mary"]); 

  // 5. Modify the value of an existing element
  println!("\n5. Modify the value of an existing element");
  
  // I am trying to check if the key was added successfully before. It was if it prints 4.
  println!("Jennifer's number is {}", names_to_numbers["Jennifer"]);
  
  // I am trying to modify.
  names_to_numbers.insert("Jennifer", 10);
  
  // If it prints 10 then I successfully modified.
  println!("Jennifer's number is {}", names_to_numbers["Jennifer"]);
  
  // 6. Search for the existence of a key
  println!("\n6. Search for the existence of a key");
  
  // I am trying to search for a key that I know that does not exist. I am using a function named contains_key. It works if it prints the correct info.
  if names_to_numbers.contains_key("Linda")
  {
    println!("Linda key exists");  
  }
  else
  {
    println!("Linda key does not exist");  
  }

  // Now, I am trying the same thing with a key I know exists. It works if it prints the correct info.
  if names_to_numbers.contains_key("John")
  {
    println!("John key exists");  
  }
  else
  {
    println!("John key does not exist");  
  }  

  // 7. Search for the existence of a value
  println!("\n7. Search for the existence of a value");
  
  // I am trying to check if 1 as a value exists.
  let does_contain_1 = names_to_numbers.values().any(|&val| val == 1);
  
  // I am trying to check if 0 as a value exists.
  let does_contain_0 = names_to_numbers.values().any(|&val| val == 0);
  
  // It works if it prints the correct info.
  if does_contain_1
  {
    println!("1 value exists");  
  }
  else
  {
    println!("1 value does not exist"); 
  }
  
  // It works if it prints the correct info.
  if does_contain_0
  {
    println!("0 value exists");  
  }
  else
  {
    println!("0 value does not exist"); 
  }

  // 8. Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
  println!("\n8. Loop through an associative array");
  
  // I am tring to print the elements. It works if it prints the pairs.
  fn foo(h: HashMap<&str, i32>)
  {
    // Shortcut
    //println!("{:?}", h);
    
    // Alternative way
    for (key, value) in &h {
        println!("{} - {}", key, value);
    } 
  }
  
  foo(names_to_numbers);
  
}