<?php

$data = [
    'a' => 'A',
    'b' => 1,
    'c' => '👍',
    'cookies' => $_COOKIE,
];

header('content-type: application/json');

echo json_encode($data);
?>
