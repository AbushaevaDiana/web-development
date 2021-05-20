<?php
header("Content-Type: text/plain");

function getParameterFromString($string, $parameter)
{
  $parameterPosition = strpos($string, $parameter . "=");
  if ($parameterPosition === false) die("Параметр " . $parameter . " в файле не найден!");
  $value = '';
  for ($i = $parameterPosition + strlen($parameter . "="); $i < strlen($string); $i++) {
    if ($string[$i] == "&") return $value;
    $value .= $string[$i];
  }

  return $value;
}

define("DATA_DIR", './data/');

if (!isset($_GET['email'])) die("Параметр email не задан!");
$email = $_GET['email'];

if (!is_file(DATA_DIR . $email . '.txt')) die("Пользователь не найден!");
$file = fopen(DATA_DIR . $email . '.txt', 'r');
$data = json_decode(fread($file, filesize(DATA_DIR . $email . '.txt')), JSON_OBJECT_AS_ARRAY);
fclose($file);

$email = $data['email'];
$firstName = $data['first_name'];
$lastName = $data['last_name'];
$age = $data['age'];

echo "First Name: " . $firstName . "<br />Last Name: " . $lastName . "<br />Email: " . $email . "<br />Age: " . $age;