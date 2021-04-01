<?php
//error_reporting(E_ALL);

// Добавление записи с полем html
if (
    isset($_POST['html']) &&
    !empty($_POST['html']) &&
    is_string($_POST['html'])
) {
    echo addHtml($_POST['html']);
    die();
}

// Получение записи по id
if (isset($_GET['id']) && !empty($_GET['id'])) {
    echo getHtmlById((int) $_GET['id']);
    die();
}

// Подключение к БД
function getPDO()
{
    $db_driver = 'mysql';
    $host = 'localhost';
    $user = 'root';
    $pass = '123456';
    $db = 'tkb';
    return new PDO(
        $db_driver . ':host=' . $host . ';dbname=' . $db,
        $user,
        $pass
    );
}

// Добавление записи с полем html
function addHtml(string $html): string
{
    $result = [];
    try {
        $pdo = getPDO();
        $query = $pdo->prepare('INSERT INTO tkb_data (html) VALUES(?)');
        $query->execute([$html]);
        $result = ['id' => $pdo->LastInsertId()];
    } catch (Exception $e) {
        $result = ['error' => 'Ошибка добавления записи: ' . $e->getMessage()];
    }
    return json_encode($result);
}

// Получение записи по id
function getHtmlById(int $id): string
{
    $result = [];
    try {
        $pdo = getPDO();
        $query = $pdo->prepare('SELECT html FROM tkb_data WHERE id=?');
        $query->execute([$id]);
        $result = ($html = $query->fetch())
            ? $html
            : ['message' => 'Записи с id = ' . $id . ' не существует'];
    } catch (Exception $e) {
        $result = ['error' => 'Ошибка получения записи: ' . $e->getMessage()];
    }
    return json_encode($result);
}
