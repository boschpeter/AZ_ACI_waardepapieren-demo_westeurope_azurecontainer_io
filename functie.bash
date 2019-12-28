#!/bin/bash
# https://stackoverflow.com/questions/6212219/passing-parameters-to-a-bash-function

function example {
  args
    : @required string firstName
    : string lastName
    : integer age
    : string[] ...favoriteHobbies

  echo "My name is ${firstName} ${lastName} and I am ${age} years old."
  echo "My favorite hobbies include: ${favoriteHobbies[*]}"
}

naam() {
  arg1=$1
  arg2=$2
  echo "voornaam=" $arg1 "achternaam=" $arg2
}
