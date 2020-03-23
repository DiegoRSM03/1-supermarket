<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="./css/style.css">

    <title>PDO</title>
</head>
<body>
    <?php
        ini_set('display_errors', 1);
        ini_set('display_startup_errors', 1);
        error_reporting(E_ALL);
    ?>
    <h1>Conexion a DDBB con POO</h1>
    <div class="supermarket-products">
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Proveedor</th>
                    <th>Categoría</th>
                    <th>Cantidad</th>
                    <th>Precio Unit</th>
                    <th>Existencias</th>
                    <th>Demandas</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $category = isset($_GET['category']) ? $_GET['category'] : '';
                $provider = isset($_GET['provider']) ? $_GET['provider'] : '';
                $orderBy = isset($_GET['orderBy']) ? $_GET['orderBy'] : '';

                try {
                    require('./connect.php');
                    
                    $dbh = new PDO($dbs, $dbUser, $dbPsswd);
                    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
                    $dbh->exec('SET CHARACTER SET utf8');
                
                    $query = 'SELECT * FROM PRODUCTS';
                    if ($category != '' && $provider != '') {
                        $query .= ' WHERE category=:queryCategory AND provider =:queryProvider';
                    }else if ($category == '' && $provider != '') {
                        $query .= ' WHERE provider=:queryProvider';
                    }else if ($category != '' && $provider == '') {
                        $query .= ' WHERE category=:queryCategory';
                    }
                    if ($orderBy != '') {
                        $query .= " ORDER BY $orderBy";
                    }
                    
                    $result = $dbh->prepare($query);
                    if ($category != '' && $provider != '') {
                        $result->bindValue(':queryCategory', $category);
                        $result->bindValue(':queryProvider', $provider);
                    }else if ($category == '' && $provider != '') {
                        $result->bindValue(':queryProvider', $provider);
                    }else if ($category != '' && $provider == '') {
                        $result->bindValue(':queryCategory', $category);
                    }
                    
                    $result->execute();
                    
                    while ($product = $result->fetch(PDO::FETCH_ASSOC)) {
                        echo '<tr>';
                            echo "<td>$product[id]</td>";
                            echo "<td>$product[name]</td>";
                            echo "<td>$product[provider]</td>";
                            echo "<td>$product[category]</td>";
                            echo "<td>$product[unit_quantity]</td>";
                            echo "<td>$product[unit_price]</td>";
                            echo "<td>$product[unit_exist]</td>";
                            echo "<td>$product[unit_demand]</td>";
                        echo '</tr>';
                    }
                
                } catch (Exception $e) {
                    echo 'ERROR: ' . $e->getMessage();
                } finally {
                    $dbh = null;
                }
                ?>
            </tbody>
        </table>
    </div>
</body>
</html>