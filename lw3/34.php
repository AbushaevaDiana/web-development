<?php
header("Content-Type: text/plain");

define("DATA_DIR", './data/');

if (!isset($_GET['email'])) die("Параметр email не задан!");
$email = $_GET['email'];

$data = [
  'email' => $email,
  'first_name' => "",
  'last_name' => "",
  'age' => ""
];
if (is_file(DATA_DIR . $email . '.txt')) {
  $file = fopen(DATA_DIR . $email . '.txt', 'r');
  $data = json_decode(fread($file, filesize(DATA_DIR . $email . '.txt')), JSON_OBJECT_AS_ARRAY);
  fclose($file);
}

if (isset($_GET['first_name'])) {
  $data['first_name'] = $_GET['first_name'];
}
if (isset($_GET['last_name'])) {
  $data['last_name'] = $_GET['last_name'];
}
if (isset($_GET['age'])) {
  $data['age'] = $_GET['age'];
}

$file = fopen(DATA_DIR . $email . '.txt', 'w');
fwrite($file, json_encode($data));
fclose($file);

echo "Данные успешно сохранены.";